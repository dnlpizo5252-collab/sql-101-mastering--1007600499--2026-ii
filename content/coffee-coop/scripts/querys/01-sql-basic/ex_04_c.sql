    --Excersize 3 -b
    --Municipality:

    SELECT
        municipality_code AS municipality_code,
        municipality_name AS municipality
    FROM 
        geo.municipalities
    WHERE
        municipality_name ILIKE 'Pamplona'
    ORDER BY 
        municipality_name DESC;

/**
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)