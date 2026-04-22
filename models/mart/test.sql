-- Check the source
SELECT * FROM {{ ref('petshop') }}
WHERE ANIMAL LIKE '%Goldfish%' OR ANIMAL LIKE '%Gold fish%'