    --Excersize 3 -a
    --Municipalities: Norte de Santander code and name sorted alphabetically

    SELECT
        municipality_code AS municipality_code,
        municipality_name AS municipality
    FROM 
        geo.municipalities
    WHERE
        department_code LIKE'54'
    ORDER BY 
        municipality_name DESC
    LIMIT 
        10;

/**
 municipality_code |   municipality
-------------------+-------------------
 54874             | Villa Del Rosario
 54871             | Villa Caro
 54820             | Toledo
 54810             | Tib·
 54800             | Teorama
 54743             | Silos
 54720             | Sardinata
 54680             | Santiago
 54673             | San Cayetano
 54670             | San Calixto
(10 filas)