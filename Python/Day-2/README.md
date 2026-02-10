# Practice Exercises - Day 2  
**By Jainam Sanghavi**

## 📁 Complete Project Structure

```
project/
│
├── day-2/
│   ├── queries.sql      # SQL queries with comments
│   ├── run_queries.py   # Python script to execute queries
│   └── README.md        # This file
│
├── db_config.py         # Database connection configuration
├── requirements.txt     # Python dependencies
└── .env.sample          # Environment variables template
```

## 📌 Description

### Day 2 Files:
- **queries.sql** → Contains all SQL queries used in exercises.
- **run_queries.py** → Runs queries on the database.
- **README.md** → Documentation of Day 2.

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
cd Day-2
python run_queries.py
```

## 📝 Notes
- Make sure your MySQL server is running
- Update queries.sql with your practice exercises
- Check db_config.py for connection settings
