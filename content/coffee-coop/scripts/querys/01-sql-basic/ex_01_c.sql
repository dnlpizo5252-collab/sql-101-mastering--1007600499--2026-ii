    --Excersice 1 -c
    --Deparmets:order by code and departments
    
    SELECT
        department_code as code, department_name as Deparmets
    FROM
        geo.departments
    ORDER BY 
        department_name ASC;

/**
 code |                        deparmets
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina
 08   | Atlßntico
 11   | Bogotß, D.C.
 13   | BolÝvar
 15   | Boyacß
 17   | Caldas
 18   | Caquetß
 85   | Casanare
 19   | Cauca
 20   | Cesar
 27   | Choc¾
 23   | C¾rdoba
 25   | Cundinamarca
 94   | GuainÝa
 95   | Guaviare
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nari±o
 54   | Norte De Santander
 86   | Putumayo
 63   | Quindio
 66   | Risaralda
-- Más  --