SELECT  o.customer, o.order_date, o.order_id, o.store_id, i.sku_id, COUNT(DISTINCT o.order_date) as quantity, 
    p.price, st.tax_rate, 
    (COUNT(DISTINCT o.order_date) * p.price) as amount,
    (COUNT(DISTINCT o.order_date) * p.price* (1 + tax_rate))  as amount_charged
    
FROM {{ ref('stg_orders') }} AS o
JOIN {{ ref('stg_items') }} AS i on i.order_id = o.order_id
join {{ ref('stg_products')}} As p on p.products_id = i.sku_id
join {{ref('stg_stores')}} as st on st.stores_id = o.store_id
GROUP BY  o.customer, o.order_date, o.order_id, o.store_id, i.sku_id, p.price, st.tax_rate
