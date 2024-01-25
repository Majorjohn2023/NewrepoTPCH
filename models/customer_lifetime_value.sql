SELECT 
    c.c_custkey,
    SUM(ms.monthly_sales) as lifetime_value
FROM {{ ref('enriched_customers') }} c
JOIN {{ ref('monthly_sales') }} ms ON c.c_custkey = ms.c_custkey
GROUP BY c.c_custkey
