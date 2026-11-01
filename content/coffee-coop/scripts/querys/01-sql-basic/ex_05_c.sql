    --Excersize 5 -c
    --Collection points: inactive or without phone, showing phone number and active status  
    
    SELECT
        point_name AS point,
        phone_number AS number,
        is_active
    FROM
        buy.collection_points
    WHERE   
        phone_number IS NULL AND is_active = FALSE;
/**
         point          | number | is_active
------------------------+--------+-----------
 Punto de Compra ApÝa 2 |        | f
(1 fila)
   
