with invalid_order as (
   SELECT *
FROM {{ ref('fact_oders_items') }}
WHERE amount < 0
)

select count(*)
from invalid_order
having count(*) > 0