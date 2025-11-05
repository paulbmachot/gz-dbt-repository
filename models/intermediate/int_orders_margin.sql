-- int_orders_margin.sql

 SELECT
     order_id,
     order_date,
     ROUND(SUM(total_amount),2) as revenue,
     ROUND(SUM(quantity),2) as quantity,
     ROUND(SUM(purchase_cost),2) as purchase_cost,
     ROUND(SUM(margin),2) as margin
 FROM {{ ref("int_sales_margin") }}
 GROUP BY order_id, order_date
 ORDER BY order_id DESC

