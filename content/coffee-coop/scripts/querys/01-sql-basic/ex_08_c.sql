    -- Exercise 08 - c
    --Deliveries of 2026-09-30: wet parchment or cherry coffee, heaviest first

    SELECT
        T1.delivery_id     AS delivery,
        T1.coffee_type     AS coffee_type,
        T1.gross_weight_kg AS gross_weight_kg
    FROM 
        buy.deliveries AS T1
    WHERE  
        T1.delivery_id LIKE 'DLV-20260930-%'
    AND 
        T1.coffee_type IN ('wet_parchment', 'cherry')
    ORDER BY 
        T1.gross_weight_kg DESC
    LIMIT 
        10;

/**
      delivery       |  coffee_type  | gross_weight_kg
---------------------+---------------+-----------------
 DLV-20260930-000081 | cherry        |          475.13
 DLV-20260930-000187 | cherry        |          339.30
 DLV-20260930-000105 | wet_parchment |          277.63
 DLV-20260930-000028 | wet_parchment |          258.00
 DLV-20260930-000133 | cherry        |          254.83
 DLV-20260930-000094 | cherry        |          246.96
 DLV-20260930-000129 | wet_parchment |          206.71
 DLV-20260930-000161 | wet_parchment |          197.04
 DLV-20260930-000046 | wet_parchment |          186.73
 DLV-20260930-000248 | cherry        |          159.89
(10 filas)