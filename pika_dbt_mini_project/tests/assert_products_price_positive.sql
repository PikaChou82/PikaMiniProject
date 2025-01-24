with invalid_orders as (
    select *
    from {{ ref('dim_products_supplies') }}
    where price < 0
)
select count(*)
from invalid_orders
having count(*) > 0