SELECT *
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1000".orders
WHERE o_custkey IN (SELECT c_custkey FROM {{ ref('base_customers') }})
