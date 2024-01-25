SELECT 
    c_custkey,
    o_orderdate,
    SUM(total_sales) as total_sales
FROM {{ ref('enriched_orders') }}
GROUP BY o_orderdate,c_custkey