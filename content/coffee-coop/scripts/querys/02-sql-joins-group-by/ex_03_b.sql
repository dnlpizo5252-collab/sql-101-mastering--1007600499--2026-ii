-- Exercise 03 - b
--Collection points that received no deliveries on 2026-09-30

SELECT
    T2.point_name AS collection_point
FROM
    buy.deliveries AS T1
RIGHT JOIN
    buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%'
WHERE
    T1.delivery_id IS NULL
ORDER BY
    T2.point_name ASC
LIMIT
    10;

/**
          collection_point
-------------------------------------
 Punto de Compra Aipe 1
 Punto de Compra Aipe 2
 Punto de Compra AndalucÃ­a 1
 Punto de Compra ApÃ­a 1
 Punto de Compra Armero Guayabal 1
 Punto de Compra Belmira 1
 Punto de Compra Caldono 1
 Punto de Compra Caloto 1
 Punto de Compra Carmen De ApicalÃ¡ 2
 Punto de Compra ChinÃ¡cota 1
(10 filas)