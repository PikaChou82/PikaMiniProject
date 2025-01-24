with invalid_orders as (
    select *
    from {{ ref('fact_orders') }}
    where amount_charged > amount
)
select count(*)
from invalid_orders
having count(*) > 0