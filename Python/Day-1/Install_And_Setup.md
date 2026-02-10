
# Install and Set Up a Database Tool

## Option 1: MySQL 

### Step 1: Download MySQL

1. Go to **MySQL Community Downloads**
2. Choose **MySQL Installer for Windows**
3. Download the **Full Installer** (recommended)

---

### Step 2: Install MySQL

During installation:

* Select **Developer Default** or **Server Only**
* Keep default settings unless you know otherwise
* Set a **root password** (IMPORTANT — remember this)
* Finish installation

MySQL installs:

* MySQL Server
* MySQL Workbench (GUI tool)

---

### Step 3: Open MySQL Workbench (Test Installation)

1. Open **MySQL Workbench**
2. Click on **Local Instance**
3. Enter the root password

If it opens successfully → ✅ **MySQL is installed correctly**

---

### Step 4: Test with a Query

Run this inside MySQL Workbench:

```sql
SELECT VERSION();
```

If it returns a version number → 🎉 Installation verified

---


## Option 2: SQLite 

SQLite is perfect for learning and small projects.

---

### Step 1: Install SQLite

* Download **SQLite Tools**
* Extract the files
* Add the folder path to **Environment Variables → PATH**

(Or skip this and use a GUI tool directly)

---

### Step 2: Install SQLite Browser (Easiest Way)

Download **DB Browser for SQLite**

This gives you:

* GUI interface
* No command line headache
* Instant database creation

---

### Step 3: Open SQLite (Test Installation)

1. Open **DB Browser for SQLite**
2. Click **New Database**
3. Save the file (`test.db`)
4. Create a simple table or just open the DB

If the tool opens and the DB file is created → ✅ **SQLite works**

---

### Step 4: Test with a Query

```sql
SELECT sqlite_version();
```

If it returns a version → 🎉 Installation verified

---

