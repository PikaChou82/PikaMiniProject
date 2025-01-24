with source as (
    SELECT * FROM "dev"."public"."products"
),
renamed as (
    select
        sku as products_id,
        name as products_name,
        type as type,
        price as price,
        description as description
    from source
)
select * from renamed
