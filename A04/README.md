# Assignment A04 - SQLite World Database Manager

This repository contains the solution for **Assignment A04**. The script `db.py` dynamically creates an SQLite database (`db.sqlite`) from CSV files stored inside `world.zip` using Object-Oriented Programming (OOP) principles.

## Features & Implementation
- **Existing Table Protection**: Inspects `sqlite_master` to avoid recreating existing tables.
- **CSV & ZIP Parsing**: Reads CSV content directly from `world.zip` using Python's `csv` module.
- **SQL Query Execution**: Resolves Question (*How many cities are in the Czech Republic?*) and prints the question and calculated answer to stdout.

---

## Instructions to Clone and Run

### 1. Clone Repository
```bash
git clone [https://github.com/](https://github.com/)<radek-jisa>/<A04>.git
cd <your-repo-name>/A04
```

### 2. Install Dependencies
```bash
pip install -r requirements.txt
```

(Note: Uses Python standard library modules `sqlite3`, `csv`, and `zipfile`; no external installation is required.)

## Usage Examples
### Import Tables from Archive & Run Query

```bash
python db.py city.csv country.csv
```

Or without extensions:

```bash
python db.py city country
```


### Run Query on Existing Database

```bash
python db.py
```


### Expected Output

```bash
Successfully imported 'city.csv' into table 'city'.
Successfully imported 'country.csv' into table 'country'.

==================================================
Question: How many cities are in the Czech Republic?
Answer: 10
==================================================
```