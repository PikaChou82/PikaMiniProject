SELECT (p.products_id+s.supplies_id) AS id, p.products_id, p.products_name, p.type, p.price, p.description, s.supplies_id, s.supplies_name, s.cost, s.perishable
FROM {{ ref('stg_products') }} AS p
JOIN {{ ref('stg_supplies') }} AS s on p.products_id = s.product_sku 