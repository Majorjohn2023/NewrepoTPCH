-- monthly_sales.sql
SELECT 
    o.c_custkey,
    DATE_TRUNC('month', o.o_orderdate) as month,
    SUM(o.total_sales) as monthly_sales
FROM {{ ref('enriched_orders') }} o  -- Assuming 'enriched_orders' has 'c_custkey' and 'total_sales'
GROUP BY o.c_custkey, DATE_TRUNC('month', o.o_orderdate)