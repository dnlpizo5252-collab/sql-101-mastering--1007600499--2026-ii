    -- Exercise 09 - b
    --Quality analyses of 2026-09-30: moisture outside 10%-12% with analyst and observations

    SELECT
        T1.analysis_id  AS analysis,
        T1.delivery_id  AS delivery,
        T1.moisture_pct AS moisture_pct,
        T1.analyst_name AS analyst_name,
        T1.observations AS observations
    FROM 
        buy.quality_analyses AS T1
    WHERE 
        T1.delivery_id LIKE 'DLV-20260930-%'
    AND 
        T1.moisture_pct NOT BETWEEN 10 AND 12
    LIMIT 10;

/**
      analysis      |      delivery       | moisture_pct |   analyst_name    |                   observations
--------------------+---------------------+--------------+-------------------+--------------------------------------------------
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 | Alejandra Torres  | Caf├® de buena presentaci├│n, sin olores extra├▒os.
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 | Guillermo Acevedo |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 | Santiago Rojas    | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 | Germ├ín Pe├▒a       |
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 | Heriberto Galvis  |
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 | Ruth Polan├¡a      |
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 | Efra├¡n Betancur   |
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 | Sara S├ínchez      |
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 | Wilson Galvis     |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 | Santiago Rojas    | Muestra tomada por duplicado.
(10 filas)