    --Excersize 3 -b
    --Municipalities: Norte de Santander names starting with San

    SELECT
        municipality_code AS municipality_code,
        municipality_name AS municipality
    FROM 
        geo.municipalities
    WHERE
        department_code LIKE'54' and municipality_name LIKE 'San%'
    ORDER BY 
        municipality_name DESC;
   

/**
municipality_code | municipality
-------------------+--------------
 54680             | Santiago
 54673             | San Cayetano
 54670             | San Calixto
(3 filas)