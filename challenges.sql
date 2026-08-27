-- Here are the challenges and solution for each what i have study the previous scrim!

--CHALLENGES

-- Challenge 1:

-- select brand, model, and color from cars table
-- where the color is 'red'
-- and the brand is not 'ferrari'
-- and the car has not been  sold

--SELECT * FROM cars;

-- SELECT brand, model, color
-- FROM cars
-- WHERE color LIKE '%red%'
-- AND brand NOT IN('Ferrari')
-- AND sold IS FALSE;

-- Challenge 2:

-- select brand, model, and color from cars table
-- where the color is not red, blue, or white
-- and the brand is none of: Aston Martin, Bentley or Jaguar
-- and sold is false

-- SELECT brand, model, color
-- FROM cars
-- WHERE color NOT IN('red', 'blue', 'white')
-- AND brand NOT IN('Aston Martin', 'Bentley', 'Jaguar')
-- AND sold IS FALSE;

-- Challenge 3:

-- Select brand, model, year, sold from cars
-- where the brand is 'Dodge' and year is in the 60s
-- or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
-- only select cars where sold is not true

-- SELECT brand, model, year, sold
-- FROM cars
-- WHERE (
--     (brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
--     OR (brand IN('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979)
-- )

-- AND sold IS NOT TRUE;


-- Challenge 4:
-- Select brand, model, and year from cars
-- only show the oldest 5 cars in the database
-- show cars which haven't been sold

-- SELECT brand, model, year
-- FROM cars
-- WHERE sold IS FALSE
-- ORDER BY year ASC
-- LIMIT 5;

-- Challenge 5:
-- Select color and count how many cars have each color
-- find cars which have not been sold order by count in descending order
-- only show results where the count is greater than 2
SELECT color, COUNT(color)
FROM cars
WHERE sold IS FALSE
GROUP BY color
HAVING COUNT(color) > 2
ORDER BY COUNT(color) DESC;
