with source as (
    SELECT * FROM "dev"."public"."orders"
),
renamed as (
    select
        id as order_id,
        customer as customer,
        ordered_at as order_date,
        store_id as store_id
    from source
)
select * from renamed