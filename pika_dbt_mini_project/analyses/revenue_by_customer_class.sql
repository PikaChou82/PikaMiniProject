WITH CustomerTotals AS (
    SELECT 
        dc.customer_name, 
        SUM(fct.amount) as total_ordered
    FROM 
       {{ ref('dim_customers') }} as dc
    JOIN 
       {{ ref('fact_orders_items') } as fct on fct.customer = dc.customer_id
    GROUP BY 
        dc.customer_name
)

SELECT 
    sum(ct.total_ordered) as total,
    CASE 
        WHEN ct.total_ordered BETWEEN 0 AND 99 THEN 'bronze'
        WHEN ct.total_ordered BETWEEN 100 AND 199 THEN 'silver'
        ELSE 'gold'
    END AS customer_status
FROM 
    CustomerTotals ct
    GROUP BY 
    customer_status;