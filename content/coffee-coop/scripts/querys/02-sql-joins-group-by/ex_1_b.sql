-- Exercise 01 - b
--Farms of Pamplona (54518) with municipality and farmer name, sorted by farmer last name

SELECT
    T1.farm_name         AS farm,
    T1.rural_district    AS rural_district,
    T2.municipality_name AS municipality,
    T3.first_name        AS first_name,
    T3.last_name         AS last_name
FROM
    farm.farms AS T1
INNER JOIN
    geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN
    farm.farmers AS T3
    ON T1.farmer_id = T3.farmer_id
WHERE
    T1.municipality_code = '54518'
ORDER BY
    T3.last_name ASC
LIMIT 
    10;

/**
    farm     | rural_district | municipality |   first_name   |     last_name
-------------+----------------+--------------+----------------+--------------------
 El JardÃ­n   | El Escorial    | Pamplona     | Manuel         | Agudelo JimÃ©nez
 La Selva    | PeÃ±as          | Pamplona     | Manuel         | Agudelo JimÃ©nez
 El Diamante | El Alizal      | Pamplona     | Marleny        | Agudelo Sandoval
 El Encanto  | FontibÃ³n       | Pamplona     | RocÃ­o          | Ã?lvarez CÃ¡rdenas
 Bellavista  | Alto Grande    | Pamplona     | RocÃ­o          | Ã?lvarez CÃ¡rdenas
 Monteverde  | Lengua         | Pamplona     | MÃ³nica         | Ã?lvarez Carrillo
 La CabaÃ±a   | Lengua         | Pamplona     | MÃ³nica         | Ã?lvarez Carrillo
 El ArrayÃ¡n  | Navarro        | Pamplona     | Marleny        | Ã?lvarez Correa
 El Mango    | La Legua       | Pamplona     | Alberto        | Ã?lvarez Villamizar
 Monteverde  | La Legua       | Pamplona     | Myriam Yuliana | Arango NarvÃ¡ez
(10 filas)