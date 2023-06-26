{{ config(materialized='table') }}

--SELECT *, DATETIME(date, "America/New_York") as created_at_est FROM `dbt-technical-training.adamrees_dbt.date_data` 
SELECT *, DATETIME(date, "America/New_York") as created_at_est FROM {{ source('sampleData', 'date_data')}}