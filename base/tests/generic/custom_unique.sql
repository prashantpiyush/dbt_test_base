{% test custom_unique(model, column_name) %}

WITH dup AS (
    SELECT
        {{ column_name }},
        COUNT(*) AS count
    FROM {{ model }}
    GROUP BY {{ column_name }}
    HAVING COUNT(*) > 1
)

SELECT * FROM dup

{% endtest %}

 