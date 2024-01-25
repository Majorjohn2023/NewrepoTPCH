SELECT 
    c.*,
    CASE 
        WHEN c.c_mktsegment = 'BUILDING' THEN 'Construction'
        ELSE 'Other'
    END as market_segment
FROM {{ ref('base_customers') }} c
