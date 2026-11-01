    -- Exercise 6 - b
    --Members of Pamplona: no email registered

    SELECT
        document_number AS document,
        first_name      AS "first name",
        last_name       AS "last name",
        phone_number    AS phone
    FROM
        farm.farmers
    WHERE
        municipality_code = '54518' AND email IS NULL
    LIMIT 
        10;

/**
  document  |    first name    |    last name     |   phone
------------+------------------+------------------+------------
 712758473  | Wilson           | L¾pez Villamizar | 3055094275
 727945493  | Gloria           | MarÝn Rivera     | 3225571567
 549054771  | MarÝa            | Burbano Duarte   | 3183590387
 24999630   | Esperanza        | Romero Betancur  | 3029623613
 914044314  | AncÝzar Cristian | PolanÝa Delgado  | 3028825809
 343256743  | Dora             | Hernßndez Correa | 3166719225
 1148351420 | InÚs             | JimÚnez Jaimes   | 3104090231
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa      | 3207660684
 749444168  | Emilio           | Delgado Molina   | 3118015821
 940051048  | David Germßn     | Romero Bonilla   | 3018117176
(10 filas)