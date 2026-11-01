    -- Exercise 10 - c
    --Settlements of 2026-09-30: no deductions, with calculated gross check

    SELECT
        T1.settlement_id AS settlement,
        T1.gross_amount  AS gross_cop,
        T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop
    FROM 
        pay.settlements AS T1
    WHERE 
        T1.delivery_id LIKE 'DLV-20260930-%'
        AND T1.deductions_amount = 0
    LIMIT 
        10;

/**
     settlement      | gross_cop  | check_gross_cop
---------------------+------------+-----------------
 STL-20261001-000006 | 2422063.44 |    2422063.4400
 STL-20261001-000060 | 5291841.24 |    5291841.2400
 STL-20261003-000006 | 1018199.16 |    1018199.1600
 STL-20261002-000018 | 2432254.55 |    2432254.5500
 STL-20261003-000001 | 4965142.70 |    4965142.7000
 STL-20261002-000006 | 3666584.60 |    3666584.6000
 STL-20261001-000058 | 3987456.96 |    3987456.9600
 STL-20261002-000024 | 5009358.60 |    5009358.6000
 STL-20260930-000050 | 1398228.24 |    1398228.2400
 STL-20261002-000003 | 1056600.30 |    1056600.3000
(10 filas)