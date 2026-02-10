## What is SQL?

**SQL (Structured Query Language)** is a standard language used to interact with relational databases. It allows users and applications to store, retrieve, modify, and manage data efficiently.

In simple terms:

> SQL is the language we use to talk to databases.

Whenever an application needs to fetch user details, save an order, or update a record, SQL is often working in the background.


---

## Applications of SQL

### Web Applications

* User authentication (login and signup)
* Posts, comments, likes, and messages

### Data Analysis and Reporting

* Generating sales reports
* Tracking business performance

### Data Science and Machine Learning

* Extracting data for model training
* Cleaning and transforming datasets

### Healthcare Systems

* Maintaining patient records
* Scheduling appointments


---

## Types of Databases

Databases can be classified based on how data is stored, structured, and accessed. Each type is designed to solve specific problems.

---

## Relational Databases (SQL Databases)

Relational databases store data in **tables made up of rows and columns**. Relationships between tables are defined using keys such as primary keys and foreign keys.


### Key Characteristics

* Fixed schema (structured format)
* Strong data integrity
* ACID compliance (Atomicity, Consistency, Isolation, Durability)

### Common Examples

* MySQL
* PostgreSQL
* Oracle Database
* Microsoft SQL Server

### Typical Use Cases

* Banking and financial systems
* Healthcare applications
* Enterprise software where data accuracy is critical

---


## NoSQL Databases (Non-Relational Databases)

NoSQL databases are designed for flexibility, scalability, and handling large volumes of data. They do not rely on fixed table schemas.

### Why NoSQL?

* Handles unstructured or semi-structured data
* Scales horizontally with ease
* Suitable for high-traffic applications


### Types of NoSQL Databases

#### Document Databases

* Store data as JSON-like documents
* Easy to map with application objects

Example:

```json
{
  "name": "Jainam",
  "skills": ["SQL", "Python"]
}
```

Examples: MongoDB, CouchDB


---

#### Key-Value Databases

* Data stored as key-value pairs
* Extremely fast lookups

Examples: Redis, DynamoDB

Commonly used for caching and session management.

---

#### Column-Family Databases

* Data stored in columns rather than rows
* Optimized for analytics and large datasets

Examples: Apache Cassandra, HBase

---

#### Graph Databases

* Data represented as nodes and relationships
* Excellent for relationship-heavy data

Examples: Neo4j

Used in recommendation systems and social networks.

---

## Hierarchical Databases

Hierarchical databases organize data in a tree-like structure where each parent can have multiple children, but each child has only one parent.

* Simple structure
* Limited flexibility
* Mostly used in legacy systems

Example: IBM IMS

---

## Network Databases

Network databases are similar to hierarchical databases but allow many-to-many relationships. This makes them more flexible than pure hierarchical models.

---

## Object-Oriented Databases

Object-oriented databases store data as objects, similar to object-oriented programming concepts.

* Data and behavior stored together
* Useful when application logic closely matches data structure

Examples: ObjectDB, db4o

---

## Cloud Databases

Cloud databases are hosted and managed on cloud platforms. They offer scalability, high availability, and reduced infrastructure management.

### Popular Cloud Databases

* Amazon RDS
* Google BigQuery
* Azure SQL Database
* Snowflake

These are widely used in modern, cloud-native applications.

---
