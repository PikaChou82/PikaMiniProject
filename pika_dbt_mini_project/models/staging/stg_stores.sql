with source as (
    SELECT * FROM "dev"."public"."stores"
),
renamed as (
    select
        id as stores_id,
        name as stores_name,
        opened_at as opened_at,
        tax_rate as tax_rate
    from source
)
select * from renamed
