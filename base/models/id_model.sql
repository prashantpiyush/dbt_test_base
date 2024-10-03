{{
  config({    
    "materialized": "table",
    "schema": "pp_test"
  })
}}

WITH raw_ids AS (

  SELECT * 
  
  FROM {{ ref('raw_ids')}}

)

SELECT *

FROM raw_ids
