
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', schema = 'dbt_adam_rees') }}

-- with source_data as (

--     select 1 as id
--     union all
--     select null as id

-- )

select *
from {{ source('dbt_sql_server_dbo', 'messages')}}

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
