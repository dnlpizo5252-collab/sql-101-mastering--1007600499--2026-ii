-- Exercise 01 - a
--Farmers of Pamplona (54518) with membership date and seniority in days as of today

SELECT
    T1.document_number AS document,
    T1.first_name      AS first_name,
    T1.last_name       AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
ORDER BY
    membership_days DESC
LIMIT 
    10;

/**
  document  |    first_name    |     last_name      | membership_date | membership_days
------------+------------------+--------------------+-----------------+-----------------
 402745033  | Julißn Guillermo | Valencia Narvßez   | 1995-01-27      |           11604
 361839624  | RocÝo Alba       | Ortega Serrano     | 1995-07-10      |           11440
 546579335  | Wilson           | Parra Prada        | 1995-07-28      |           11422
 939635303  | Marleny          | ┴lvarez Correa     | 1996-03-20      |           11186
 748380481  | Teresa Adriana   | Valencia Moreno    | 1996-07-23      |           11061
 1012324420 | Martha Carolina  | PÚrez Jaimes       | 1996-11-22      |           10939
 230971064  | Manuel           | Agudelo JimÚnez    | 1997-03-29      |           10812
 483692716  | Ramiro           | Barrera Villamizar | 1997-04-08      |           10802
 677772599  | Guillermo        | PÚrez PÚrez        | 1997-05-17      |           10763
 59388780   | Juan             | Ortega Zapata      | 1997-07-13      |           10706
(10 filas)