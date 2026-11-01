    -- Exercise 6 - c
    --Members of Pamplona: inactive membership, oldest to newest

    SELECT
        document_number AS document,
        first_name      AS "first name",
        last_name       AS "last name",
        phone_number    AS phone
    FROM
        farm.farmers
    WHERE
        municipality_code = '54518'
        AND is_active = FALSE
    ORDER BY
        membership_date ASC;

/**
  document  |    first name    |     last name      |   phone
------------+------------------+--------------------+------------
 230971064  | Manuel           | Agudelo JimÚnez    | 3219718862
 534023693  | Myriam           | Valencia Moreno    | 3241389451
 33787285   | RubÚn            | Ramos Chamorro     | 3244273375
 1135293825 | Abelardo         | PÚrez Castro       | 3245612074
 478755763  | Nicolßs          | Rivera Duque       | 3029310183
 160538872  | Liliana          | Mosquera Uribe     | 3119365364
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 3502554241
 10424994   | Cristian         | Herrera Zuluaga    | 3242295228
 1015411133 | Santiago         | Berm·dez Ruiz      | 3003993000
 1090968710 | Ruth             | RodrÝguez PÚrez    | 3021808053
 974842644  | Arturo           | Hernßndez Uribe    | 3058169707
 1001030458 | Liliana Luisa    | Chamorro VÚlez     | 3002682380
 870240973  | Jairo            | Molina Pab¾n       | 3018237329
 89157555   | Heriberto        | JimÚnez Cßceres    | 3164266457
 333176982  | Edilma           | Rivera Rivera      | 3126087263
 587550249  | Gustavo          | Mosquera L¾pez     | 3119000149
 718906996  | Nelson           | Bedoya VÚlez       | 3194564518
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | 3207660684
 599185252  | EfraÝn           | Pinz¾n Cabrera     | 3216450755
 135734682  | Diego            | Rivera JimÚnez     | 3508307641
 914044314  | AncÝzar Cristian | PolanÝa Delgado    | 3028825809
(21 filas)