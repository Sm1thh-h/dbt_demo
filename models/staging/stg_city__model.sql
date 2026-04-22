{{ config(materialized='table') }}

SELECT *
FROM {{ source('city_data', 'Cities') }}