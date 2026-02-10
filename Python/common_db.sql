-- use 30day_of_sql;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(10),
    course VARCHAR(50),
    score INT
);

INSERT INTO students VALUES
(1, 'John', 'A', 'Math', 85),
(2, 'Mary', 'A', 'Math', 90),
(3, 'Jake', 'B', 'Science', 70),
(4, 'Emily', 'B', 'Science', 75),
(5, 'Steve', 'A', 'Math', 95),
(6, 'John', 'A', 'Physics', 88);


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Marketing'),
(4, 'Finance');


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees VALUES
(1, 'Alan', 28, 60000, 1, NULL),
(2, 'Brian', 35, 80000, 3, 1),
(3, 'Catherine', 42, 90000, 2, 1),
(4, 'Dylan', 25, 50000, 1, 2),
(5, 'Evan', NULL, 70000, 4, 3),
(6, 'Helen', 38, 95000, 3, 3);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 1200.00, 10),
(2, 'Mouse', 'Electronics', 25.00, 200),
(3, 'Keyboard', 'Electronics', 45.00, 150),
(4, 'Chair', 'Furniture', 150.00, 50),
(5, 'Desk', 'Furniture', 300.00, 20),
(6, 'Book', 'Education', 20.00, 500);


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    region VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers VALUES
(1, 'Alice', 'Delhi', 'North', 'alice@gmail.com'),
(2, 'Bob', 'Mumbai', 'West', 'bob@yahoo.com'),
(3, 'Carol', 'Chennai', 'South', 'carol@outlook.com'),
(4, 'David', 'Kolkata', 'East', 'david@gmail.com');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    order_total DECIMAL(10,2),
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(101, 1, 1, '2024-01-10', 1200.00, 'Fast delivery'),
(102, 2, 2, '2024-02-15', 1500.00, 'Good service'),
(103, 1, 3, '2024-03-01', 3000.00, 'Repeat order'),
(104, 3, 4, '2024-03-20', 800.00, 'Satisfied'),
(105, 2, 5, '2024-04-10', 2000.00, 'Bulk order'),
(106, 1, 6, '2024-05-05', 1000.00, 'Discount applied');


CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    sales_amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales VALUES
(1, 'Alice', 'North', 5000, '2024-01-01'),
(2, 'Bob', 'South', 7000, '2024-01-02'),
(3, 'Alice', 'North', 3000, '2024-01-03'),
(4, 'Bob', 'South', 2000, '2024-01-04'),
(5, 'Carol', 'East', 8000, '2024-01-05');


CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    author_id INT,
    rating DECIMAL(2,1),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO authors VALUES
(1, 'Author A'),
(2, 'Author B');

INSERT INTO books VALUES
(1, 1, 4.6),
(2, 1, 4.8),
(3, 1, 4.7),
(4, 1, 4.9),
(5, 2, 4.2);

CREATE TABLE regions (
    region_name VARCHAR(50)
);

INSERT INTO regions VALUES
('North'), ('South'), ('East'), ('West');
