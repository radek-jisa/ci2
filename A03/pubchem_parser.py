import sys
from bs4 import BeautifulSoup


def parse_pubchem_iupac(xml_filepath: str) -> None:
    """Parses a PubChem XML file and prints the IUPAC names of all compounds

    found in the file to standard output (one per line).
    """
    with open(xml_filepath, "r", encoding="utf-8") as file:
        soup = BeautifulSoup(file, "xml")

    iupac_names = []

    # Standard PubChem XML property hierarchy structure
    for info in soup.find_all("PC-InfoData"):
        label = info.find("PC-UrOP_label")
        if label and label.string and "IUPAC Name" in label.string:
            val = info.find("PC-InfoData_value_sval")
            if val and val.string:
                iupac_names.append(val.string.strip())

    # Fallback search for direct <IUPACName> tags
    if not iupac_names:
        for tag in soup.find_all(["IUPACName", "iupacname"]):
            if tag.string:
                iupac_names.append(tag.string.strip())

    for name in iupac_names:
        print(name)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Error: Missing input XML file argument.")
        print("Usage: python pubchem_parser.py <path_to_xml_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    parse_pubchem_iupac(input_file)
