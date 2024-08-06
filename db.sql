#!/bin/bash

# Define the SQLite database file
DATABASE="example.db"

# Create a table
echo "Creating table..."
sqlite3 $DATABASE <<EOF
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    salary REAL NOT NULL
);
EOF

# Insert data into the table
echo "Inserting data..."
sqlite3 $DATABASE <<EOF
INSERT INTO employees (name, position, salary) VALUES ('Alice', 'Engineer', 70000.00);
INSERT INTO employees (name, position, salary) VALUES ('Bob', 'Manager', 85000.00);
INSERT INTO employees (name, position, salary) VALUES ('Charlie', 'Analyst', 60000.00);
EOF

# Select data from the table
echo "Selecting data..."
sqlite3 $DATABASE <<EOF
SELECT * FROM employees;
EOF

# End of script
echo "Done."
