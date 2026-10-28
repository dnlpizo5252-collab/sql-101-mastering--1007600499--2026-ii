    --Excersice 2 -b
    --Coffe:

    SELECT 
        variety_name as variety,
        species,
        description
    FROM 
        farm.coffee_varieties
    WHERE
        is_rust_resistant = FALSE AND species = 'arabica'
    ORDER BY variety_name DESC;

/**
    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 TÝpica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutaci¾n de Borb¾n de porte bajo y alta productividad.
 Borb¾n Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borb¾n        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)
        