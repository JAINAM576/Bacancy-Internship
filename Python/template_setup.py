#!/usr/bin/env python3
"""
Dynamic Day Folder Generator
Author: Jainam Sanghavi
Description: Automatically creates day-N folders with SQL practice files
"""

import os

BASE_NAME = "Day-"


def get_next_day_folder():
    """Auto-detect the next day number based on existing folders."""
    existing_days = [
        int(folder.replace(BASE_NAME, ""))
        for folder in os.listdir()
        if folder.startswith(BASE_NAME) and folder.replace(BASE_NAME, "").isdigit()
    ]
    return max(existing_days, default=0) + 1


def create_day_folder(day_number):
    """Create a day folder with all required files."""
    folder_name = f"{BASE_NAME}{day_number}"
    os.makedirs(folder_name, exist_ok=True)

    files_inside_day = {
        "queries.sql": f"""-- ==============================
-- Practice Exercises - Day {day_number}
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;
""",

        "run_queries.py": """
import mysql.connector
import sys 
import os 
from pathlib import Path

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from db_config import get_connection

def run_queries():
    conn = get_connection()
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


""",

        "README.md": f"""# Practice Exercises - Day {day_number}  
**By Jainam Sanghavi**

## 📁 Complete Project Structure

```
project/
│
├── Day-{day_number}/
│   ├── queries.sql      # SQL queries with comments
│   ├── run_queries.py   # Python script to execute queries
│   └── README.md        # This file
│
├── db_config.py         # Database connection configuration
├── requirements.txt     # Python dependencies
└── .env.sample          # Environment variables template
```

## 📌 Description

### Day {day_number} Files:
- **queries.sql** → Contains all SQL queries used in exercises.
- **run_queries.py** → Runs queries on the database.
- **README.md** → Documentation of Day {day_number}.

### Parent Configuration Files:
- **db_config.py** → MySQL database connector using environment variables
- **requirements.txt** → Required Python packages (mysql-connector-python, python-dotenv)
- **.env.sample** → Template for database credentials

## 🚀 Setup Instructions

### 1. Install Dependencies
```bash
pip install -r requirements.txt
```

### 2. Configure Database
Copy `.env.sample` to `.env` and update with your credentials:
```bash
cp .env.sample .env
```

Edit `.env`:
```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=your_database
```

### 3. Run Queries
```bash
cd day-{day_number}
python run_queries.py
```

## 📝 Notes
- Make sure your MySQL server is running
- Update queries.sql with your practice exercises
- Check db_config.py for connection settings
"""
    }

    for filename, content in files_inside_day.items():
        path = os.path.join(folder_name, filename)
        with open(path, "w", encoding="utf-8") as f:
            f.write(content)

    print(f"✅ Created folder: {folder_name}")
    print(f"   📂 {folder_name}/queries.sql")
    print(f"   📂 {folder_name}/run_queries.py")
    print(f"   📂 {folder_name}/README.md")


def create_parent_files():
    """Create parent configuration files if they don't exist."""
    parent_files = {
        "db_config.py": """import os
from dotenv import load_dotenv
import mysql.connector

load_dotenv()

def get_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_NAME")
    )
""",

        "requirements.txt": """mysql-connector-python
python-dotenv
""",

        ".env.sample": """DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=your_database
"""
    }

    for filename, content in parent_files.items():
        if not os.path.exists(filename):
            with open(filename, "w", encoding="utf-8") as f:
                f.write(content)
            print(f"✅ Created: {filename}")


if __name__ == "__main__":
    print("🚀 Day Folder Generator\n")
    create_parent_files()
    next_day = get_next_day_folder()
    create_day_folder(next_day)
    print(f"\n✨ Done! Run 'cd {BASE_NAME}{next_day}' to start coding.")
