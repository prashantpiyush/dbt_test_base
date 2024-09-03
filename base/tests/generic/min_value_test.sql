{% test min_value_test(model, column_name, threshold) %}

select * from {{ model }} where column_name < {{ threshold }}

{% endtest %}

 