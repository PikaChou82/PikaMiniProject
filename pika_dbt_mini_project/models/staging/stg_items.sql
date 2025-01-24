with source as (
    SELECT * FROM "dev"."public"."items"
),
renamed as (
    select
        id as item_id,
        order_id as order_id,
        sku as sku_id
    from source
)
select * from renamed