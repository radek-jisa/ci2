# Assignment A05: CDXML to SDF Conversion and Similarity Analysis

This directory contains the solution for assignment **A05**. 
The Python script `cdxml2sdf.py` processes ChemDraw (`.cdxml`) files, converts them into a consolidated Structure-Data File (`cdxml2sdf.sdf`), calculates chemical fingerprints, and identifies the two most structurally similar molecules based on their Tanimoto similarity score.


## Setup and Environment Instructions (WSL / Linux)

Parsing XML-based ChemDraw files (`.cdxml`) in OpenBabel requires the `libxml2` library, which is natively supported under Linux / WSL (Windows Subsystem for Linux).

### 1. Clone the GitHub Repository

```bash
git clone git@github.com:radek-jisa/ci2.git
cd ci2/A05
```

### 2. Install System Dependencies

Install Python virtual environment tools and system-level OpenBabel C++ libraries:

```bash
sudo apt update
sudo apt install -y python3-venv openbabel libopenbabel-dev
```

### 3. Create and Activate Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate
```

### 4. Install Python Requirements

```bash
pip install --upgrade pip
pip install -r requirements.txt
```


## Running the Script

Ensure your input `.cdxml` files are placed inside the `A05` directory before running the script.

### Default Run (Outputs to `cdxml2sdf.sdf`)
```bash
python3 cdxml2sdf.py *.cdxml
```

### Custom SDF Output Name
If an argument ending with `.sdf` is supplied and does not exist on disk, the script uses it as the output filename:
```bash
python3 cdxml2sdf.py *.cdxml output_molecules.sdf
```

## Expected Output Example

```text
Saved 4 structure(s) to 'cdxml2sdf.sdf'.
Most similar: compound_a.cdxml and compound_c.cdxml
Tanimoto similarity: 0.8125
```