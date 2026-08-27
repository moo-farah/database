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
* **%** Represents zero or more characters
* **_** Represesnts a single character


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