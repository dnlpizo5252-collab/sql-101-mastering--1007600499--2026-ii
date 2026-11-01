    -- Exercise 08 - a
    --Deliveries of 2026-09-30: code, farm, collection point, reception time, coffee type and gross weight

    SELECT
        T1.farm_name AS farm,
        T1.latitude  AS latitude,
        T1.longitude AS longitude
    FROM 
        farm.farms AS T1
    WHERE  
        T1.municipality_code = '54518'
        AND (T1.latitude IS NULL OR T1.longitude IS NULL)
    LIMIT 
        10;

/**
     farm      | latitude | longitude
---------------+----------+-----------
 El Recuerdo   |          |
 La Esperanza  |          |
 Las Delicias  |          |
 Los Arrayanes |          |
 El Brillante  |          |
 El Porvenir   |          |
 La Florida    |          |
 Los Arrayanes |          |
 El Guayabo    |          |
 El Encanto    |          |
(10 filas)