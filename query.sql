/* Selects all data from the cars */

-- SELECT * FROM cars;

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

SELECT brand, model, year, condition, price
FROM cars
WHERE condition <= 7
AND year < 2020
AND price <= 20000;