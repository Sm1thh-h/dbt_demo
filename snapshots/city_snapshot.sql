{% snapshot city_snapshot %}

{{
   config(
	   target_schema='snapshot',
	   unique_key='ID',

	   strategy='check',
	   check_cols='all',
   )
}}

select ID,
	   ANIMAL,
	   SALEPRICE,
	   QUANTITY
 from {{ ref('petshop') }}
 order by ID asc

{% endsnapshot %}