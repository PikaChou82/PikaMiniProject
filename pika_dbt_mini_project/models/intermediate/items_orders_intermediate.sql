SELECT  i.item_id, o.customer, o.order_date, o.order_id, o.store_id, i.sku_id
FROM {{ ref('stg_orders') }} AS o
JOIN {{ ref('stg_items') }} AS i on i.order_id = o.order_id
