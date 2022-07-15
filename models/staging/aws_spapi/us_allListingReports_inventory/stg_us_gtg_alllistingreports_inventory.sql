{{ config(materialized='view', bind=False) }}

with us_gtg_allinventory as (
    select * from {{ source('gtg_allinventory', 'aws_spapi_us_gtg_alllistingsreport_inventory') }}
),

final as (
    select 
        "listing_id" as listing_id
        ,"marketplaceName" as country_code
        ,"status" as active_status
        ,"product_id"
        ,"product_id_type"
        ,"quantity"
        ,"pending_quantity"
        ,"price"
        ,"ProductTaxCode"
        ,"item_condition"
        ,"item_description"
        ,"item_is_marketplace"
        ,"item_name"
        ,"item_note"
        ,"asin1"
        ,"asin2"
        ,"asin3"
        ,"bid_for_featured_placement"
        ,"expedited_shipping"
        ,"fulfillment_channel"
        ,"add_delete"
        ,"marketplaceId"
        ,"marketplaceName"
        ,"maximum_retail_price"
        ,"maximum_seller_allowed_price"
        ,"merchant_shipping_group"
        ,"minimum_seller_allowed_price"
        ,"open_date" as open_date_utc
        ,"optional_payment_type_exclusion"
        ,"marketplaceId"
        ,"maximum_retail_price"
        ,"maximum_seller_allowed_price"
        ,"merchant_shipping_group"
        ,"minimum_seller_allowed_price"
        ,"optional_payment_type_exclusion"
        ,"scheduled_delivery_sku_set"
        ,"seller_sku"
        ,"sellingPartnerId"
        ,"standard_price_point"
        ,"will_ship_internationally"
        ,"zshop_boldface"
        ,"zshop_browse_path"
        ,"zshop_category1"
        ,"zshop_shipping_fee"
        ,"zshop_storefront_feature"
        ,"ReportRequestTime"
        ,"ReportendDate" as reportenddate_utc
        ,"ReportstartDate" as reportstartdate_utc

    from us_gtg_allinventory
)

Select * from final


