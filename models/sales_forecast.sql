SELECT 
    month,
    monthly_sales,
    AVG(monthly_sales) OVER (ORDER BY month ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) as moving_avg_sales
FROM {{ ref('monthly_sales') }}
