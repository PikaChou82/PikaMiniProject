with source as (
    SELECT * FROM "dev"."public"."supplies"
),
renamed as (
    select
        id as supplies_id,
        name as supplies_name,
        cost as cost,
        perishable as perishable,
        sku as product_sku
    from source
)
select * from renamed
