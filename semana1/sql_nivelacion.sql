\c nivelacion_database;

SELECT * 
FROM agents
WHERE name ~ '^M|O';



SELECT *
FROM customers 
WHERE occupation LIKE '%Engineer%'
ORDER BY occupation;


