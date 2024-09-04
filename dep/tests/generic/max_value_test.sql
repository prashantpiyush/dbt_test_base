{% test max_value_test(model, column_name, threshold) %}

select * from {{ model }} where {{ column_name }} > {{ threshold }}
{% endtest %}

 {% test max_value_test_with_extra_col(model, column_name, ig_col, threshold) %}

select * from {{ model }} where {{ column_name }} > {{ threshold }}
{% endtest %}

 