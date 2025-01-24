SELECT st.stores_name, AVG((fct.amount_charged - fct.amount) / fct.amount) as average_rate
FROM  {{ ref('fact_orders_items') }} as fct 
JOIN   {{ ref('dim_stores') }} as st on st.stores_id = fct.store_id
group by st.stores_name 