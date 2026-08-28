import { PGlite } from "@electric-sql/pglite";
import { getRandomValues } from "crypto";
import fs from 'fs'

(async () => {
    const db = new PGlite();
    
    // Set up the DB file
    const createTables = fs.readFileSync('create-table.sql', 'utf-8');
    const insertCarsData = fs.readFileSync('insert-cars-data.sql', 'utf-8');
    await db.exec(createTables);
    await db.exec(insertCarsData);
    
    // Run the changes made in DM section
    const crudOperations = fs.readFileSync('crud-operations.sql', 'utf-8');
    await db.exec(crudOperations);

    // Load the sql query file
    const query = fs.readFileSync('query.sql', 'utf-8');

    // Run the query from the query fike
    const response = await db.query(query);

    console.clear();
    console.table(response.rows);
})();