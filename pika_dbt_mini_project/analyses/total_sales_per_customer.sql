SELECT dc.customer_name, sum(fct.amount) as total_ordered
FROM {{ ref('dim_customers') }} as dc
JOIN  {{ ref('fact_oders_items') }} as fct on fct.customer = dc.customer_id
GROUP BY dc.customer_name