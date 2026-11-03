#!/usr/bin/env python3
import glob
import os
import sys

try:
    from openbabel import pybel
except ImportError:
    import pybel


def parse_args(argv):
    raw_args = argv[1:]
    if not raw_args:
        print("Usage: python cdxml2sdf.py <files.cdxml ...> [output.sdf]")
        sys.exit(1)

    output_sdf = "cdxml2sdf.sdf"
    input_patterns = []

    for arg in raw_args:
        if arg.lower().endswith(".sdf") and not os.path.exists(arg):
            output_sdf = arg
        else:
            input_patterns.append(arg)

    cdxml_files = []
    for pattern in input_patterns:
        for filepath in glob.glob(pattern):
            if filepath.lower().endswith(".cdxml") and os.path.isfile(filepath):
                if filepath not in cdxml_files:
                    cdxml_files.append(filepath)

    return cdxml_files, output_sdf


def find_most_similar(records):
    best_sim = -1.0
    best_pair = None
    n = len(records)

    for i in range(n):
        for j in range(i + 1, n):
            file1, _, fp1 = records[i]
            file2, _, fp2 = records[j]
            similarity = float(fp1 | fp2)

            if similarity > best_sim:
                best_sim = similarity
                best_pair = (file1, file2)

    return best_pair, best_sim


def main(argv):
    input_files, output_sdf = parse_args(argv)

    if not input_files:
        print("Error: No .cdxml files specified.")
        sys.exit(1)

    records = []
    sdf_out = pybel.Outputfile("sdf", output_sdf, overwrite=True)

    try:
        for filepath in input_files:
            molecules = list(pybel.readfile("cdxml", filepath))
            for idx, mol in enumerate(molecules):
                sdf_out.write(mol)
                fp = mol.calcfp("fp2")
                name = filepath if len(molecules) == 1 else f"{filepath}#mol{idx+1}"
                records.append((name, mol, fp))
    finally:
        sdf_out.close()

    print(f"Saved {len(records)} structure(s) to '{output_sdf}'.")

    if len(records) >= 2:
        (f1, f2), sim = find_most_similar(records)
        print(f"Most similar: {f1} and {f2}")
        print(f"Tanimoto similarity: {sim:.4f}")


if __name__ == "__main__":
    main(sys.argv)