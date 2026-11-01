    -- Exercise 10 - b
    --Settlements of 2026-09-30: pending settlements, highest net value first

    SELECT
        T1.settlement_id AS settlement,
        T1.delivery_id   AS delivery,
        T1.status        AS status,
        T1.net_amount    AS net_cop
    FROM   
        pay.settlements AS T1
    WHERE 
        T1.delivery_id LIKE 'DLV-20260930-%'
        AND T1.status = 'pending'
    ORDER BY 
        T1.net_amount DESC
    LIMIT 
        10;

/**
     settlement      |      delivery       | status  |  net_cop
---------------------+---------------------+---------+------------
 STL-20261001-000040 | DLV-20260930-000256 | pending | 6094824.45
 STL-20261001-000057 | DLV-20260930-000105 | pending | 6051013.94
 STL-20261003-000007 | DLV-20260930-000116 | pending | 5349871.04
 STL-20261002-000004 | DLV-20260930-000010 | pending | 5347247.03
 STL-20260930-000069 | DLV-20260930-000204 | pending | 5013706.66
 STL-20261003-000001 | DLV-20260930-000023 | pending | 4965142.70
 STL-20261002-000042 | DLV-20260930-000152 | pending | 4693178.85
 STL-20261003-000012 | DLV-20260930-000286 | pending | 4135855.75
 STL-20261002-000033 | DLV-20260930-000189 | pending | 4023811.68
 STL-20261001-000033 | DLV-20260930-000179 | pending | 3978665.28
(10 filas)

Explicacion 
gross_amount es una columna generada: la base de datos la calcula 
sola multiplicando el peso neto por el precio por kg. Como en mi 
consulta hice la misma multiplicación, check_gross_cop da el mismo 
resultado, y por eso coinciden.
