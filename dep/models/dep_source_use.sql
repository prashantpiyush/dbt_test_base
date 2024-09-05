{{
  config({    
    "schema": "pp_test"
  })
}}

WITH dep_ids AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.pp_test', 'dep_ids') }}

)

SELECT *

FROM dep_ids
