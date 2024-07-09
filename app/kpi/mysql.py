from typing import Dict, List
import pymysql
from pymysql.err import MySQLError
from datetime import datetime
from app.utils.time import get_current_time


class MySQLWrapper:
    def __init__(
        self,
        host: str = "127.0.0.1",
        user: str = "root",
        password: str = "regression",
        database_name: str = "kpi_db",
    ):

        self.host = host
        self.user = user
        self.password = password
        self.database_name = database_name

        self.conn = None
        self.cursor = None

    def connect(self):
        try:

            db_config = {
                "host": self.host,
                "user": self.user,
                "password": self.password,
            }

            self.conn = pymysql.connect(**db_config)
            print(f"[INFO {get_current_time()}] Connected to MySQL database. ")
            self.cursor = self.conn.cursor()
            print(f"[INFO {get_current_time()}] Connected to MySQL server. ")
            return self.cursor

        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] {err}. ")
            return None
        except MySQLError as e:
            print(f"[ERROR {get_current_time()}] MySQL error: {e}. ")
        except Exception as e:
            print(f"[ERROR {get_current_time()}] Unexpected error: {e}. ")

        return True

    def create_database(self, db_name: str = "kpi_db"):
        """Create the kpi_db database if it doesn't exist."""
        if not self.cursor:
            return False
        try:
            self.cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name}")
            print(
                f"[INFO {get_current_time()}] Database '{db_name}' created or already exists. "
            )

        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Failed creating database: {err}. ")
            return False

        return True

    def use_database(self, db_name: str = "kpi_db") -> bool:
        if not self.cursor:
            return False
        try:
            self.cursor.execute(f"USE {db_name}")
            print(f"[INFO {get_current_time()}] Using '{db_name}' database. ")

        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Failed creating database: {err}. ")
            return False

        return True

    def check_if_table_exists(self, database_name, table_name="kpi_db"):
        if not self.cursor:
            return False
        try:
            self.cursor.execute(
                f"""
                SELECT COUNT(*)
                FROM information_schema.tables 
                WHERE table_schema = '{database_name}' 
                AND table_name = '{table_name}';
            """
            )

            result = self.cursor.fetchone()
            if result[0] > 0:
                print(
                    f"[INFO {get_current_time()}] The table '{table_name}' exists in the database '{database_name}'. "
                )
            else:
                print(
                    f"[INFO {get_current_time()}] The table '{table_name}' does not exist in the database '{database_name}'. "
                )
        except MySQLError as e:
            print(
                "[ERROR {get_current_time()}] Error while checking the table existence",
                e,
            )
            return False

        return True

    def create_unit_test_kpi_table(self, unit_test_flow: str = "Simulation"):
        """Create the table on mysql db."""
        if not self.cursor:
            return False
        table = (
            "sim_test_results"
            if unit_test_flow == "Simulation"
            else "formal_test_results"
        )
        if unit_test_flow == "Simulation":
            create_table_query = """
            CREATE TABLE sim_test_results (
                id SERIAL PRIMARY KEY,
                user VARCHAR(255) DEFAULT 'default_user',
                timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                llm_model_name VARCHAR(255) DEFAULT 'default_model',
                test_name VARCHAR(255) DEFAULT 'default_test',
                scenarios_generated INT DEFAULT 0,
                initial_syntax_errors INT DEFAULT 0,
                initial_syntax_warnings INT DEFAULT 0,
                syntax_errors_first_fix INT DEFAULT 0,
                syntax_warnings_first_fix INT DEFAULT 0,
                syntax_errors_second_fix INT DEFAULT 0,
                syntax_warnings_second_fix INT DEFAULT 0,
                syntax_errors_third_fix INT DEFAULT 0,
                syntax_warnings_third_fix INT DEFAULT 0,
                syntax_errors_fourth_fix INT DEFAULT 0,
                syntax_warnings_fourth_fix INT DEFAULT 0,
                scenarios_remaining INT DEFAULT 0,
                passed_test_cases INT DEFAULT 0,
                total_coverage DOUBLE PRECISION DEFAULT 0.0
            );
            """
        else:
            create_table_query = """
            CREATE TABLE formal_test_results (
                id SERIAL PRIMARY KEY,
                user VARCHAR(255) DEFAULT 'default_user',
                timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                llm_model_name VARCHAR(255) DEFAULT 'default_model',
                test_name VARCHAR(255) DEFAULT 'default_test',
                scenarios_generated INT DEFAULT 0,
                initial_syntax_errors INT DEFAULT 0,
                initial_syntax_warnings INT DEFAULT 0,
                syntax_errors_first_fix INT DEFAULT 0,
                syntax_warnings_first_fix INT DEFAULT 0,
                syntax_errors_second_fix INT DEFAULT 0,
                syntax_warnings_second_fix INT DEFAULT 0,
                syntax_errors_third_fix INT DEFAULT 0,
                syntax_warnings_third_fix INT DEFAULT 0,
                syntax_errors_fourth_fix INT DEFAULT 0,
                syntax_warnings_fourth_fix INT DEFAULT 0,
                scenarios_remaining INT DEFAULT 0,
                number_of_assertions INT DEFAULT 0,
                number_of_cover_cases INT DEFAULT 0,
                passed_assertions INT DEFAULT 0,
                passed_cover_cases INT DEFAULT 0,
                total_coverage DOUBLE PRECISION DEFAULT 0.0
            );
            """
        try:
            self.cursor.execute(create_table_query)
            print(
                f"[INFO {get_current_time()}] Table '{table}' created or already exists. "
            )

        except pymysql.Error as err:
            print(f"Failed creating table: {err}")
            return False
        return True

    def insert_data(self, data: Dict, unit_test_flow: str = "Simulation"):
        """Insert example data into the sim_test_results/forma_test_results table."""
        table = (
            "sim_test_results"
            if unit_test_flow == "Simulation"
            else "formal_test_results"
        )
        if unit_test_flow == "Simulation":
            insert_data_query = """
            INSERT INTO sim_test_results (
                user, timestamp, llm_model_name, test_name, scenarios_generated, initial_syntax_errors,
                initial_syntax_warnings, syntax_errors_first_fix, syntax_warnings_first_fix,
                syntax_errors_second_fix, syntax_warnings_second_fix, syntax_errors_third_fix,
                syntax_warnings_third_fix, syntax_errors_fourth_fix, syntax_warnings_fourth_fix, 
                passed_test_cases, total_coverage
            ) VALUES (%(user)s, %(timestamp)s, %(llm_model_name)s, %(test_name)s, %(scenarios_generated)s, 
                    %(initial_syntax_errors)s, %(initial_syntax_warnings)s, %(syntax_errors_first_fix)s, 
                    %(syntax_warnings_first_fix)s, %(syntax_errors_second_fix)s, %(syntax_warnings_second_fix)s, 
                    %(syntax_errors_third_fix)s, %(syntax_warnings_third_fix)s, %(syntax_errors_fourth_fix)s, 
                    %(syntax_warnings_fourth_fix)s, %(passed_test_cases)s, 
                    %(total_coverage)s)
            """
        else:
            insert_data_query = """
            INSERT INTO formal_test_results (
                user, timestamp, llm_model_name, test_name, scenarios_generated, initial_syntax_errors,
                initial_syntax_warnings, syntax_errors_first_fix, syntax_warnings_first_fix,
                syntax_errors_second_fix, syntax_warnings_second_fix, syntax_errors_third_fix,
                syntax_warnings_third_fix, syntax_errors_fourth_fix, syntax_warnings_fourth_fix, 
                number_of_assertions, number_of_cover_cases, passed_assertions, passed_cover_cases, 
                total_coverage
            ) VALUES (%(user)s, %(timestamp)s, %(llm_model_name)s, %(test_name)s, %(scenarios_generated)s, 
                    %(initial_syntax_errors)s, %(initial_syntax_warnings)s, %(syntax_errors_first_fix)s, 
                    %(syntax_warnings_first_fix)s, %(syntax_errors_second_fix)s, %(syntax_warnings_second_fix)s, 
                    %(syntax_errors_third_fix)s, %(syntax_warnings_third_fix)s, %(syntax_errors_fourth_fix)s, 
                    %(syntax_warnings_fourth_fix)s, %(number_of_assertions)s, %(number_of_cover_cases)s, 
                    %(passed_assertions)s, %(passed_cover_cases)s, %(total_coverage)s)
            """
        try:
            if not self.cursor:
                return False
            self.cursor.execute(insert_data_query, data)
            if self.conn:
                try:
                    self.conn.commit()
                    print(
                        f"[INFO {get_current_time()}] Data inserted into '{table}' table. "
                    )
                except Exception as e:
                    print(
                        f"[ERROR {get_current_time()}] An error occurred during commit: {e}. "
                    )
                    return False
            else:
                print("[ERROR {get_current_time()}] Connection not established")
                return False

        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Error inserting data: {err}")
            return False
        except MySQLError as e:
            print(f"[ERROR {get_current_time()}] MySQL error: {e}")
            return False
        except Exception as e:
            print(f"[ERROR {get_current_time()}] Unexpected error: {e}")
            return False
        return True

    def delete_all_data(self, unit_test_flow: str = "Simulation"):
        """Delete all data from the sim_test_results/formal_test_results table."""
        table = (
            "sim_test_results"
            if unit_test_flow == "Simulation"
            else "formal_test_results"
        )
        delete_query = f"DELETE FROM {table}"
        try:
            if not self.cursor:
                return False
            self.cursor.execute(delete_query)
            if self.conn:
                try:
                    self.conn.commit()
                    print(
                        f"[INFO {get_current_time()}] Data deleted from '{table}' table. "
                    )
                except Exception as e:
                    print(
                        f"[ERROR {get_current_time()}] An error occurred during commit: {e}. "
                    )
                    return False
            else:
                return False

            print(
                f"[INFO {get_current_time()}] All data deleted from '{table}' table. "
            )
        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Error deleting data: {err}. ")

    def print_contents(self, unit_test_flow: str = "Simulation"):
        table = (
            "sim_test_results"
            if unit_test_flow == "Simulation"
            else "formal_test_results"
        )
        try:
            if not self.cursor:
                return False
            self.cursor.execute(f"SELECT * FROM {table}")
            results = self.cursor.fetchall()
            print(f"[INFO {get_current_time()}] Contents of '{table}' table:")
            for row in results:
                print(row)
        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Error listing contents: {err}. ")
        return True

    def read_data(
        self, design_name: str, start_time=None, unit_test_flow: str = "Simulation"
    ) -> List[Dict]:
        results: List[Dict] = []
        table = (
            "sim_test_results"
            if unit_test_flow == "Simulation"
            else "formal_test_results"
        )
        try:
            query_str = f"SELECT * FROM {table} WHERE test_name = '{design_name}'"
            if start_time:
                query_str += f" AND timestamp >= '{start_time}'"
            if not self.cursor:
                return results
            self.cursor.execute(query=query_str)
            rows = self.cursor.fetchall()
            print(
                f"[INFO {get_current_time()}] Contents of '{table}' table for design '{design_name}':"
            )
            for row in rows:
                # Construct dictionary for each row
                result_dict = {}  # Create a dictionary to store each row
                for column_name, column_value in zip(self.cursor.description, row):
                    result_dict[column_name[0]] = (
                        column_value  # Map column name to column value
                    )
                results.append(result_dict)  # Append the dictionary to the results list

        except pymysql.Error as err:
            print(f"[ERROR {get_current_time()}] Error listing contents: {err}")
        return results


def test_my_sql():
    # Example data to insert
    example_data = [
        {
            "user": "User1",
            "timestamp": None,  # This will use the default value of CURRENT_TIMESTAMP
            "llm_model_name": "Model1",
            "test_name": "TestA",
            "scenarios_generated": 100,
            "initial_syntax_errors": 10,
            "initial_syntax_warnings": 5,
            "syntax_errors_first_fix": 8,
            "syntax_warnings_first_fix": 3,
            "syntax_errors_second_fix": 5,
            "syntax_warnings_second_fix": 2,
            "syntax_errors_third_fix": 3,
            "syntax_warnings_third_fix": 1,
            "syntax_errors_fourth_fix": 2,
            "syntax_warnings_fourth_fix": 1,
            "scenarios_remaining": 2,
            "passed_test_cases": 87,
            "total_coverage": 95.50,
        },
        {
            "user": "User2",
            "timestamp": None,  # This will use the default value of CURRENT_TIMESTAMP
            "llm_model_name": "Model2",
            "test_name": "TestB",
            "scenarios_generated": 150,
            "initial_syntax_errors": 20,
            "initial_syntax_warnings": 10,
            "syntax_errors_first_fix": 15,
            "syntax_warnings_first_fix": 5,
            "syntax_errors_second_fix": 10,
            "syntax_warnings_second_fix": 5,
            "syntax_errors_third_fix": 5,
            "syntax_warnings_third_fix": 2,
            "syntax_errors_fourth_fix": 3,
            "syntax_warnings_fourth_fix": 1,
            "scenarios_remaining": 2,
            "passed_test_cases": 5,
            "total_coverage": 25.00,
        },
    ]

    try:
        my_sql = MySQLWrapper()
        conn = my_sql.connect()
        if not conn:
            print("[ERROR {get_current_time()}] Failed to connect to MySQL database")
            exit(1)

        if not my_sql.create_unit_test_kpi_table(unit_test_flow="Simulation"):
            print("[ERROR {get_current_time()}] Failed to create table")
            exit(1)

        # Insert example data
        for data in example_data:
            current_timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            data["timestamp"] = current_timestamp
            if not my_sql.insert_data(data):
                print("[ERROR {get_current_time()}] Failed to insert data")
                exit(1)

        my_sql.print_contents()

    except pymysql.Error as err:
        print(f"[ERROR {get_current_time()}] {err}")

    finally:
        if my_sql.conn:
            my_sql.conn.close()
            print(f"[INFO {get_current_time()}] MySQL connection closed. ")
