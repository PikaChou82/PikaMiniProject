with source as (
    SELECT * FROM "dev"."public"."customers"
),
renamed as (
    select
        id as customer_id,
        name as customer_name
    from source
)
select * from renamed