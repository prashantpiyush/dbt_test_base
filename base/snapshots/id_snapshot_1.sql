{{
  config({    
    "materialized": "view",
    "schema": "pp_test",
    "target_schema": "pp_test"
  })
}}

WITH raw_ints AS (

  SELECT * 
  
  FROM {{ ref('raw_ints')}}

),

Reformat_1 AS (

  SELECT * 
  
  FROM raw_ints AS in0

),

Deduplicate_1 AS (

  SELECT DISTINCT *
  
  FROM Reformat_1 AS in0

)

SELECT *

FROM Deduplicate_1
