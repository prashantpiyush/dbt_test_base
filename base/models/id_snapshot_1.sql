{{
  config({    
    "schema": "pp_test"
  })
}}

WITH raw_ids AS (

  SELECT * 
  
  FROM {{ ref('raw_ids')}}

),

Reformat_1 AS (

  SELECT * 
  
  FROM raw_ids AS in0

),

Deduplicate_1 AS (

  SELECT DISTINCT *
  
  FROM Reformat_1 AS in0

)

SELECT *

FROM Deduplicate_1
