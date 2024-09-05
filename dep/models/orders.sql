{{
  config({    
    "schema": "pp_test"
  })
}}

WITH raw_orders AS (

  SELECT * 
  
  FROM {{ ref('raw_orders')}}

)

SELECT *

FROM raw_orders
