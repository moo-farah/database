/* Selects all data from the cars */

--SELECT * FROM cars;

-- Select columns from the table cars

-- SELECT brand, model, price FROM cars;


-- SELECT brand, model, color, price FROM cars
-- WHERE color = 'black';


-- Select the brand, model, condition and price from cars
-- where the condition equals 7


-- SELECT brand, model, condition, price FROM cars
-- WHERE condition = 7;


-- select the brand, model, condition, and price from cars find results where the price is less than 50000;

-- SELECT brand, model, condition, price FROM cars
-- WHERE price < 50000;

-- SELECT brand, model, color, price
-- FROM cars
-- WHERE color != 'red';

-- select the brand, model, year, condition, and price from cars
-- where the condition is 7 or higher
-- and the year is before 2020

-- SELECT brand, model, year, condition, price
-- FROM cars
-- WHERE condition <= 7
-- AND year < 2020
-- AND price <= 20000;


-- SELECT brand, model, price, sold
-- FROM cars 
-- WHERE  brand IN ('Toyota','Ford','BMW')
-- AND sold IS FALSE;

-- select the brand, model, condition, and year from cars 
-- where the year is 1961, 1963, 1965, 1967, or 1969
-- and the condition us 3 or higher
-- and sold is false
-- SELECT brand, model, condition, year
-- FROM cars
-- WHERE year IN (1961, 1963, 1965, 1967, 1969)
-- AND condition >= 3
-- AND sold IS FALSE;

-- select brand, model, price, and sold from cars
-- filter out any cars which are sold
-- show cars where the brand is none of ('Ford', 'Triump', 'chevrolet', 'Dodge')
-- or the price is less than $50000

-- SELECT brand, model, price, sold
-- FROM cars
-- WHERE sold = FALSE
-- AND (brand NOT IN('Ford', 'Triump', 'Chevrolet', 'Doge')
-- OR price < 50000);



-- Select the brand, model, condition and price from cars order the table by condition in descending order
-- and by price in ascending order

-- SELECT brand, model, condition, price
-- FROM cars
-- ORDER BY condition DESC, price;


-- Select the brand, model, condition and price from cars
-- where the car is not sold and the condition is not 5
-- order the table by condition in descending order and by price in ascending order

-- SELECT brand, model, condition, price
-- FROM cars
-- WHERE sold IS NOT TRUE 
-- AND condition != 5
-- ORDER BY condition DESC, price;

-- select the average, minimum and maximum price from cars where sold is true
-- round the average up to the nearest whole number and use 'avg' as the alias for that result
-- SELECT CEIL
-- (AVG(price)) as avg, 
-- MIN(price), 
-- MAX(price)
-- FROM cars
-- WHERE sold IS TRUE;

-- select the condition, and a count of the condition from cars group by the condition column
-- SELECT condition, COUNT(condition)
-- FROM cars
-- GROUP BY condition;

-- Select:
-- * the brand
-- * a count of the brand
-- * and an average of the price for each brand
-- * round the average down to the nearest number
-- * alias the average as 'AVG' in your output
-- From cars where
-- the car has not been sold
-- Group the table by brand.

-- SELECT brand, COUNT(brand), FLOOR(AVG(price)) as avg
-- FROM cars
-- WHERE sold IS NOT TRUE
-- GROUP BY brand;

-- Select:
-- * year
-- * a count of cars from that year, aliased as car_count
-- * the maximum price
-- * the minimum price
-- from the table cars
-- where the car has been sold
-- group by year
-- only show years where more than one car has been sold from that year
-- order the result by car_count

-- SELECT year,
--  COUNT(year) as car_count, 
--  MAX(price), 
--  MIN(price)
-- FROM cars
-- WHERE sold IS TRUE
-- GROUP BY year
-- HAVING COUNT(year) > 1
-- ORDER BY car_count;

-- SELECT id, dealership_id, brand, model FROM cars;


-- Select the brand, model, price, sold, sold_price columns from sold_cars
-- Left join with cars matching sold_cars.cars_id to cars.id

-- SELECT brand, model, price, sold, sold_price
-- FROM sold_cars sc
-- RIGHT JOIN cars c ON sc.cars_id = c.id;


-- Select name, role, city, state
-- From the staff table
-- Left join with the dealerships table where the dealership_id in staff
-- matches with the id in dealerships

-- SELECT name, role, city, state
-- FROM staff s
-- LEFT JOIN dealerships d ON s.dealership_id = d.id;

-- SELECT name, role, city, state
-- FROM staff
-- INNER JOIN dealerships ON dealership_id = dealerships.id;


-- Select name, role, sold_price from staff
-- Inner join with sold_cars
-- matching seller with staff.id	
-- SELECT name, role, sold_price
-- FROM staff
-- FULL JOIN sold_cars ON sold_cars.seller = staff.id;



-- Select the city and average car price
-- Round that car price to a whole number
-- Only show dealerships which have cars
-- Group by dealership city and state
-- SELECT city, state, Round(AVG(price), 2) AS avg_price
-- FROM cars
-- INNER JOIN dealerships d ON dealership_id = d.id
-- GROUP BY city, state;



-- Select the name and role, alongside a total_sales:
-- this is the sum of sales by a member of staff	
-- Use staff as your left table and sold_cars as your right table	
-- Include a where clause to select only staff with the role 'Salesperson'
-- Group by staff name and role
-- Order by the total_sales from high to low

-- SELECT name, role, SUM(sold_price) AS total_sales
-- FROM staff
-- FULL JOIN sold_cars ON sold_cars.seller = staff.id
-- WHERE role = 'Salesperson'
-- GROUP BY name, role
-- ORDER BY total_sales DESC;


-- Select the city, state and
-- count the total number of cars in each dealership
-- alias the count as car_count
-- Use cars as the left table, and dealerships as the right table
-- choosing a join which will show every dealership
-- Include a condition to count unsold cars
-- Group by dealership city and state
-- Order by the car_count


-- SELECT city, state, COUNT(c.id) AS car_count
-- FROM cars c
-- RIGHT JOIN dealerships d ON c.dealership_id = d.id
-- WHERE sold IS NOT TRUE
-- GROUP BY city, state
-- ORDER BY car_count;

-- Joining multiple tablse
-- SELECT
--     c.brand,
--     c.model, 
--     s.name AS seller_name,
--     d.city,
--     TO_CHAR(sc.sold_date, 'DD-MM-YYYY') AS date_of_sale
-- FROM sold_cars sc
-- INNER JOIN cars c ON sc.cars_id = c.id
-- LEFT JOIN staff s ON sc.seller = s.id
-- LEFT JOIN dealerships d ON s.dealership_id = d.id;


-- Select the name, role and city from sold_cars
-- Join with the staff and dealerships tables
-- use appropriate joins to show staff who have no dealership_id
-- Include a where clause to find
-- - null values in sold_cars
-- - staff who have the role 'Salesperson'
-- SELECT 
--     s.name, 
--     s.role, 
--     d.city
-- FROM sold_cars sc
-- FULL JOIN staff s ON sc.seller = s.id
-- LEFT JOIN dealerships d on s.dealership_id = d.id
-- WHERE sc.id IS NULL
-- AND s.role = 'Salesperson';




-- Show the city and state of dealerships
-- with a count of the cars sold
-- aliased as cars_sold
-- Select from sold_cars
-- join with the relevant tables
-- Include dealerships which have no sold cars
-- Order the count in descending order	
-- Hint: you may need to join using a table not included in our columns
SELECT 
    D.city,
    D.state,
    COUNT(SC.id) AS cars_sold
FROM dealerships D
LEFT JOIN cars C ON C.dealership_id = D.id
RIGHT JOIN sold_cars SC ON SC.cars_id = C.id
GROUP BY D.city, D.state
ORDER BY cars_sold DESC;









