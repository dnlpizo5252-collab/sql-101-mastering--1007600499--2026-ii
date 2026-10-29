    --Excersize 3 -b
    --Certifications:

    SELECT 
        certification_name AS certification,
        issuing_body AS issuer,
        premium_per_kg AS premiun_per_kg_cop,
        premium_per_kg * 125 AS premium_per_load_cop
    FROM
        farm.Certifications
    ORDER BY 
        premium_per_kg DESC;
        
/**

    certification    |              issuer               | premiun_per_kg_cop | premium_per_load_cop
---------------------+-----------------------------------+--------------------+----------------------
 Orgßnico            | Ente certificador orgßnico        |             800.00 |            100000.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00 |             62500.00
 Fairtrade           | Fairtrade International           |             400.00 |             50000.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00 |             43750.00
 Rainforest Alliance | Rainforest Alliance               |             300.00 |             37500.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00 |             31250.00
 4C                  | 4C Services                       |             150.00 |             18750.00
(7 filas)