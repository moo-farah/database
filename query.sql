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




