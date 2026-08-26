import { PGlite } from "@electric-sql/pglite";
import fs from 'fs'

(async () => {
    const db = new PGlite();
    await db.exec (`
        CREATE TABLE IF NOT EXISTS cars (
            id SERIAL PRIMARY KEY,
            brand TEXT,
            model TEXT,
            year INTEGER,
            price INTEGER,
            color TEXT,
            condition INTEGER,
            solid BOOLEAN
        );
        INSERT INTO cars (brand, model, year, price, color, condition, solid
            ) VALUES 
            ('Toyota', 'Camry', 2020, 25000, 'blue', 8, true),
            ('Honda', 'Civic', 2019, 20000, 'red', 7, false),
            ('Ford', 'F-150', 2021, 35000, 'black', 9, true),
            ('Chevrolet', 'Silverado', 2020, 30000, 'white', 8, true),
            ('BMW', 'X5', 2019, 50000, 'green', 7, false)
    `);
    // Load the SQL file
    const query = fs.readFileSync('query.sql', 'utf-8');

    // Executing simple queries for sections
    const response = await db.query(query);

    console.clear();
    console.table(response.rows);
})();