# Assignment A03 - PubChem XML Parser

This repository contains a Python script `pubchem_parser.py` designed to parse XML data retrieved from the PubChem database and print the IUPAC names of all compounds present in the file to standard output.

## Setup and Execution Commands

To verify the functionality of the solution, run the following commands after cloning the repository:


### 1. Clone the repository
```bash
git clone https://github.com/radek-jisa/ci2.git
cd ci2/A03
```

### 2. Create and activate a virtual environment
#### On Linux / macOS:
```bash
python3 -m venv venv
source venv/bin/activate
```

#### On Windows (cmd / PowerShell):
```bash
python -m venv venv
venv\Scripts\activate
```

### 3. Install required packages
```bash
pip install -r requirements.txt
```

### 4. Run the parser script on the XML file
```bash
python pubchem_parser.py pubchem_benzidine.xml
```
