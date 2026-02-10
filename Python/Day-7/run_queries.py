
import mysql.connector
import sys 
import os 
from pathlib import Path

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from db_config import get_connection

def run_queries():
    conn = get_connection("30day_of_sql")
    cursor = conn.cursor()

    base_dir = Path(__file__).resolve().parent

    queries_path = base_dir / "queries.sql"

    with queries_path.open("r", encoding="utf-8") as file:
        sql_script = file.read()

    queries = [q.strip() for q in sql_script.split(";") if q.strip()]

    for i, query in enumerate(queries, 1):
        print(f"--- Running Query {i} ---")
        print(query)

        try:
            cursor.execute(query)
            try:
                results = cursor.fetchall()
                for row in results:
                    print(row)
            except:
                print("✅ Query executed successfully (no result to fetch).")
        except Exception as e:
            print(f"❌ Error in Query {i}: {e}")
            continue  

    cursor.close()
    conn.close()

if __name__ == "__main__":
    run_queries()


