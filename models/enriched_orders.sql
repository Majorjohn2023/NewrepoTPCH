SELECT 
    o.o_orderkey,
    o.o_orderdate,  -- Include other specific fields from base_orders that you need
    ec.c_custkey,
    ec.market_segment,
    SUM(o.o_totalprice) as total_sales
FROM {{ ref('base_orders') }} o
JOIN {{ ref('enriched_customers') }} ec ON o.o_custkey = ec.c_custkey
GROUP BY o.o_orderkey, o.o_orderdate, ec.c_custkey, ec.market_segment