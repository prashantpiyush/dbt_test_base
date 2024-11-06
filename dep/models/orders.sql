{{
  config({    
    "materialized": "table"
  })
}}

WITH raw_orders AS (

  SELECT * 
  
  FROM {{ ref('raw_orders')}}

),

raw_payments AS (

  SELECT * 
  
  FROM {{ ref('raw_payments')}}

),

Join_1 AS (

  {#Combines order details with payment information for comprehensive order tracking.#}
  SELECT 
    in0.id AS id,
    in0.user_id AS user_id,
    in0.order_date AS order_date,
    in0.status AS status,
    in1.payment_method AS payment_method,
    in1.amount AS amount
  
  FROM raw_orders AS in0
  INNER JOIN raw_payments AS in1
     ON in1.order_id = in0.id

)

SELECT *

FROM Join_1
