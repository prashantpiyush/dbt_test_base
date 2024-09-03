{% test unique(model, column_name) %}

WITH duplicates AS (
    SELECT
        {{ column_name }},
        COUNT(*) AS count
    FROM {{ model }}
    GROUP BY {{ column_name }}
    HAVING COUNT(*) > 1
)

SELECT * FROM duplicates

 
{% endtest %}

 