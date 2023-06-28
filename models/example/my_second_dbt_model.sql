
-- Use the `ref` function to select from other models
{{ config(materialized='view', schema = 'dbt_adam_rees') }}

select *
from {{ ref('my_first_dbt_model_first') }}
where id = 1
