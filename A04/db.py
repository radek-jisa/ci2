import csv
import io
import os
import sqlite3
import sys
import zipfile


class WorldDatabaseManager:
    """Manages creation of an SQLite database from world.zip CSV files
    and executes analytical SQL queries.
    """

    def __init__(self, cli_args):
        """Initializes instance attributes with command-line arguments."""
        self.cli_args = cli_args
        self.db_name = "db.sqlite"
        self.zip_name = "world.zip"
        self.connection = None
        self.cursor = None

    def connect(self):
        """Establishes connection to the SQLite database and initializes cursor."""
        self.connection = sqlite3.connect(self.db_name)
        self.cursor = self.connection.cursor()

    def close(self):
        """Commits pending database changes and closes the connection."""
        if self.connection:
            self.connection.commit()
            self.connection.close()

    def table_exists(self, table_name):
        """Checks whether a table already exists in sqlite_master."""
        self.cursor.execute(
            "SELECT name FROM sqlite_master WHERE type='table' AND name=?;",
            (table_name,),
        )
        return self.cursor.fetchone() is not None

    def parse_filename_and_tablename(self, arg):
        """Normalizes input command-line arguments into CSV filename and table name."""
        filename = arg if arg.lower().endswith(".csv") else f"{arg}.csv"
        table_name = (
            filename[:-4] if filename.lower().endswith(".csv") else filename
        )
        return filename, table_name

    def get_csv_reader(self, text_stream):
        """Detects CSV delimiter (comma or semicolon) and returns a configured csv.reader."""
        sample = text_stream.read(2048)
        text_stream.seek(0)

        delimiter = ","
        if ";" in sample and "," not in sample:
            delimiter = ";"
        else:
            try:
                dialect = csv.Sniffer().sniff(sample, delimiters=",;\t")
                delimiter = dialect.delimiter
            except Exception:
                delimiter = ","

        return csv.reader(text_stream, delimiter=delimiter)

    def import_csv_from_zip(self, csv_filename, table_name):
        """Reads CSV content from world.zip using auto-detected delimiter and populates SQLite table."""
        if self.table_exists(table_name):
            print(
                f"Table '{table_name}' already exists in database. Skipping import."
            )
            return

        if not os.path.exists(self.zip_name):
            print(f"Error: Archive '{self.zip_name}' not found.")
            return

        try:
            with zipfile.ZipFile(self.zip_name, "r") as zf:
                if csv_filename not in zf.namelist():
                    print(
                        f"Error: File '{csv_filename}' not found in archive '{self.zip_name}'."
                    )
                    return

                with zf.open(csv_filename, "r") as binary_file:
                    # 'utf-8-sig' strips UTF-8 BOM automatically if present
                    text_file = io.TextIOWrapper(
                        binary_file, encoding="utf-8-sig"
                    )
                    reader = self.get_csv_reader(text_file)

                    headers = [col.strip() for col in next(reader) if col.strip()]
                    if not headers:
                        print(f"Error: File '{csv_filename}' has no headers.")
                        return

                    col_definitions = ", ".join([f'"{h}" TEXT' for h in headers])
                    create_sql = (
                        f'CREATE TABLE "{table_name}" ({col_definitions});'
                    )
                    self.cursor.execute(create_sql)

                    placeholders = ", ".join(["?"] * len(headers))
                    insert_sql = (
                        f'INSERT INTO "{table_name}" VALUES ({placeholders});'
                    )

                    for row in reader:
                        # Clean row values to match expected column count
                        cleaned_row = [val.strip() for val in row]
                        if len(cleaned_row) == len(headers):
                            self.cursor.execute(insert_sql, cleaned_row)

                    self.connection.commit()
                    print(
                        f"Successfully imported '{csv_filename}' into table '{table_name}'."
                    )

        except Exception as e:
            print(f"Error importing '{csv_filename}': {e}")

    def execute_question(self):
        """Executes SQL query to answer Question #1:
        1. How many cities are in the Czech Republic?
        """
        question = "How many cities are in the Czech Republic?"

        if not self.table_exists("city"):
            print(
                "\nCannot answer query: 'city' table does not exist in 'db.sqlite'."
            )
            return

        if self.table_exists("country"):
            query = """
                SELECT COUNT(*) 
                FROM city 
                JOIN country ON city.CountryCode = country.Code 
                WHERE country.Name = 'Czech Republic' OR city.CountryCode = 'CZE';
            """
        else:
            query = "SELECT COUNT(*) FROM city WHERE CountryCode = 'CZE';"

        self.cursor.execute(query)
        result = self.cursor.fetchone()[0]

        print("\n" + "=" * 50)
        print(f"Question: {question}")
        print(f"Answer: {result}")
        print("=" * 50)

    def run(self):
        """Main execution workflow."""
        self.connect()

        for arg in self.cli_args:
            csv_filename, table_name = self.parse_filename_and_tablename(arg)
            self.import_csv_from_zip(csv_filename, table_name)

        self.execute_question()
        self.close()


if __name__ == "__main__":
    db_app = WorldDatabaseManager(sys.argv[1:])
    db_app.run()