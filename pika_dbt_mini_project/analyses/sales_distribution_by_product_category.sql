SELECT pdt.type, sum(fct.amount)  as sales
FROM {{ ref('dim_products_supplies') }}as pdt
JOIN   {{ ref('fact_orders_items') }as fct on fct.sku_id = pdt.products_id
GROUP BY pdt.type