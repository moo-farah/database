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

SELECT id, dealership_id, brand, model FROM cars;






