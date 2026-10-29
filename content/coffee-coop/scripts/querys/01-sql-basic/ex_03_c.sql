    --Excersize 3 -c
    --Certifications:

     SELECT 
        certification_name AS certification,
        issuing_body AS issuer,
        premium_per_kg AS premiun_per_kg_cop
    FROM
        farm.Certifications
    WHERE
        premium_per_kg >= 350;

/**

 certification |              issuer               | premiun_per_kg_cop
---------------+-----------------------------------+--------------------
 Fairtrade     | Fairtrade International           |             400.00
 Orgßnico      | Ente certificador orgßnico        |             800.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00
(4 filas)