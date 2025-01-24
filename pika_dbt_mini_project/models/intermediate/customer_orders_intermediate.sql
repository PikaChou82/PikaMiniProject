SELECT  o.customer, o.order_date, o.order_id, c.customer_name
FROM {{ ref('stg_orders') }} AS o
JOIN {{ ref('stg_customers') }} AS c on c.customer_id = o.customer