# SQL 101

> This is a repository for the SQL 101 course.

## What is SQL?

SQL stands for Structured Query Language. It is a language used to interact with databases. It is a standard language used to perform tasks such as retrieving data from a database, updating data on a database, deleting data from a database, and so on.

## What is a database?

A database is a collection of data stored in a computer system. It is a software that stores data in an organized manner. It is a collection of tables, rows, and columns. A database is used to store data for a particular purpose. For example, a database can be used to store data about students in a school, data about employees in a company, data about products in a store, and so on.

## DBMS (Database Management System)

A DBMS is a software that is used to manage databases. It is a software that is used to create, manage, and maintain databases. It is a software that is used to store, retrieve, update, and delete data from a database. It is a software that is used to perform tasks such as creating tables, creating views, creating indexes, creating triggers, and so on.

## Tables

A table is a collection of rows and columns. It is a collection of data stored in a computer system.

### Create a table

```sql
CREATE TABLE students (
  id INT,
  name VARCHAR(255) NOT NULL,
  class VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  PRIMARY KEY (id)
);
```

> CREATE TABLE - creates a new table in a database

```sql
CREATE TABLE [table name] (
  [column name] [data type] [...constraint]
);
```

### Columns

A column is a set of data values of a particular type.

#### Data types

<!-- table of top data types -->

| Data type | Description |
| --- | --- |
| `INT` | Integer |
| `VARCHAR(255)` | String with a maximum length of 255 characters |
| `TEXT` | String with a maximum length of 65535 characters |
| `DATE` | Date in the format `YYYY-MM-DD` |
| `DATETIME` | Date and time in the format `YYYY-MM-DD HH:MM:SS` |
| `TIMESTAMP` | Date and time in the format `YYYY-MM-DD HH:MM:SS` |
| `BOOLEAN` | Boolean value (`TRUE` or `FALSE`) |
| `FLOAT` | Floating point number |
| `DOUBLE` | Double precision floating point number |
| `DECIMAL` | Decimal number |
| `BLOB` | Binary large object |

#### Constraints

<!-- table of top constraints -->

| Constraint | Description |
| --- | --- |
| `NOT NULL` | Ensures that a column cannot have a `NULL` value |
| `UNIQUE` | Ensures that all values in a column are different |
| `PRIMARY KEY` | A combination of `NOT NULL` and `UNIQUE`. Uniquely identifies each row in a table |
| `FOREIGN KEY` | Uniquely identifies a row/record in another table |

### Rows

A row is a set of data values of a particular type.

<!-- example of table students with some data -->

| id | name | class | email |
| --- | --- | --- | --- |
| 1 | John Doe | NULL | <john@example.com> |
| 2 | Jane Doe | Science | <jane@example.com> |
| 3 | Mary Doe | PHP | <mary@example.com> |
| 4 | John Doe | C | <john.doe@example.com> |
