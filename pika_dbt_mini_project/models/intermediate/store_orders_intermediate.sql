SELECT   o.order_id, o.customer, o.order_date, s.stores_id, s.stores_name, s.tax_rate
FROM {{ ref('stg_orders') }} AS o
JOIN {{ ref('stg_stores') }} AS s on s.stores_id = o.store_id 