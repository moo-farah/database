# What is Structured Query Language (SQL)

Is the standard language used to communicate with relational databases - systems that store data in tables made up of rows and columns.
columns: known as **fields** while rows known as **records**

**What is you use it for:**

- **Querying data:**  retrieving specific information from tables(**SELECT**)
- **Inserting data:** adding new rows (**INSERT**)
- **Updating data:**  modifying existing rows (**UPDATE**)
- **Deleting data:**  removing rows (**DELETE**)
- **Defining structure:** creating/altering tables, setting relationships, constraints, etc. (**CREATE, ALTER, DROP**)

**Object Relational Mapping (ORMS)**
Is a method of interacting with databases which allows use of an object-oriented approach, rather than using SQL direct.

**Wildcard:** Is used to substitute one or more characters in a string.
Wild characters are used with the **LIKE** operator.
The **LIKE** operator is used in a **WHERE** clause to search for a specified pattern in a column

```
SELECT * FROM cars
WHERE model LIKE 'a%';
```

- **%** Represents zero or more characters
- **_** Represesnts a single character



### In Operator

Lets you check if a value matches **any value in a list**, instead of writting multiple **OR** conditions.

**Without IN(clunky):**

```
SELECT * FROM cars
WHERE brand = 'Toyoto' OR brand = 'Honda' OR brand = 'Ford'
```

**With IN(cleaner):**

```
SELECT * FROM cars
WHERE brand IN ('Toyota', 'Honda', 'Ford');
```



### Order By

Is used to sort the result-set in ascending or descending order.
**ORDER BY:** Is used to sort result-set in ascending order by **Default**

```
SELECT brand, model, price
FROM cars
ORDER BY price;
```



### Aggregate functions

Is a function that performs a calculation on a set of values, and returns a single value.
Often used with the **GROUP BY** clause of the **SELECT** statement.

**Most commonly used SQL**

- **MIN():** returns the smallest value of a column
- **MAX():** return the largest value of a column
- **COUNT():** return the number of rows in a column
- **SUM():** returns the sum of a numerical column
- **AVG():** return the average value of a numerical column

**COUNT():** returns the number of rows that matches a specified criterion.
```
SELECT COUNT([DISTINCT] column_name | * )
FROM table_name
WHERE condition;
```

### GROUP BY
Is used to group rows that have the same values into summary rows, like **"Find the number of customers in each country"**
Is almost used in conjunction with aggregate functions like, **COUNT(), MAX(), MIN(), AVG()** to perform calculations on each group

``` 
SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
ORDER BY column_name;
```

### HAVING BY
Is used to filter the results of a **GROUP BY** query based on aggregate functions.
```
SELECT column1, aggregate_function(column2), column2, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
HAVING condition -- The condition on grouped data
ORDER BY column_name
```

**Primary key:** constraint uniquely identifies each record in a database table.
cannot contain **NULL** values (it is a combination of both a **UNIQUR**) constraint and a **NOT NULL** constraint.

**Foreign Key:** constraint establishes a link between two tables, and prevents action that will destroy the link between them.
A **Foreign Key:** is a column in a table that refers to the **Primary key** in another table.

