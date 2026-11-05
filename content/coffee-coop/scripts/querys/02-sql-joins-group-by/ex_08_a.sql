-- Exercise 08 - a
--Departments with number of municipalities, most municipalities first

SELECT
    T1.department_name          AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM
    geo.departments AS T1
INNER JOIN
    geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY
    T1.department_code, T1.department_name
ORDER BY
    municipalities_count DESC
LIMIT 
    10;

/**
     department     | municipalities_count
--------------------+----------------------
 Antioquia          |                  125
 BoyacÃ¡             |                  123
 Cundinamarca       |                  116
 Santander          |                   87
 NariÃ±o             |                   64
 Tolima             |                   47
 BolÃ­var            |                   46
 Valle Del Cauca    |                   42
 Cauca              |                   42
 Norte De Santander |                   40
(10 filas)