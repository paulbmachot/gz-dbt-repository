 -- int_orders_operational.sql

 SELECT
     o.order_id
     ,o.order_date
     ,ROUND(o.margin + s.shipping_fee - (s.log_cost + s.ship_cost),2) AS operational_margin
     ,o.quantity
     ,o.revenue
     ,o.purchase_cost
     ,o.margin
     ,s.shipping_fee
     ,s.ship_cost
     ,s.log_cost
 FROM {{ref("int_orders_margin")}} o
 LEFT JOIN {{ref("stg_raw__ship")}} s
     ON s.orders_id = o.order_id
 ORDER BY o.order_id desc