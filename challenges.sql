-- Here are the challenges and solution for each what i have study the previous scrim!

-- Challenge 1:

-- select brand, model, and color from cars table
-- where the color is 'red'
-- and the brand is not 'ferrari'
-- and the car has not been  sold

--SELECT * FROM cars;

SELECT brand, model, color
FROM cars
WHERE color LIKE '%red%'
AND brand NOT IN('Ferrari')
AND sold IS FALSE;

-- Challenge 2:

-- select brand, model, and color from cars table
-- where the color is not red, blue, or white
-- and the brand is none of: Aston Martin, Bentley or Jaguar
-- and sold is false

SELECT brand, model, color
FROM cars
WHERE color NOT IN('red', 'blue', 'white')
AND brand NOT IN('Aston Martin', 'Bentley', 'Jaguar')
AND sold IS FALSE;

-- Challenge 3:

-- Select brand, model, year, sold from cars
-- where the brand is 'Dodge' and year is in the 60s
-- or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
-- only select cars where sold is not true

SELECT brand, model, year, sold
FROM cars
WHERE (
    (brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
    OR (brand IN('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979)
)

AND sold IS NOT TRUE;