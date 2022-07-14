{{ config(materialized='view', bind=False) }}

with gtg_allinventory as (
    select * from {{ source('gtg_allinventory', 'us_gtg_inventoryreport') }}
),
final_gtg_allinventory as (
    select 
        business_price
        ,producttaxcode
        ,quantity_lower_bound_1
        ,quantity_lower_bound_2
        ,quantity_lower_bound_3
        ,quantity_lower_bound_4
        ,quantity_lower_bound_5
        ,quantity_price_1
        ,quantity_price_2
        ,quantity_price_3
        ,quantity_price_4
        ,quantity_price_5
        
    
    from gtg_allinventory
),

lusso_gear_allinventory as (
    select 
        business_price
        ,producttaxcode
        ,quantity_lower_bound_1
        ,quantity_lower_bound_2
        ,quantity_lower_bound_3
        ,quantity_lower_bound_4
        ,quantity_lower_bound_5
        ,quantity_price_1
        ,quantity_price_2
        ,quantity_price_3
        ,quantity_price_4
        ,quantity_price_5
    
    from {{ source('lusso_gear', 'us_test_lusso') }}
)


select * from final_gtg_allinventory
union
select * from lusso_gear_allinventory 
