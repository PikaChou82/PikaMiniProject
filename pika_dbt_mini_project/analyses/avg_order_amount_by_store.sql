SELECT st.stores_name, sum(fct.amount) / count(fct.order_id) as average_sales
FROM {{ ref('dim_stores') }} as st
JOIN  {{ ref('fact_orders_items') }} as fct on fct.store_id = st.stores_id
GROUP BY st.stores_name