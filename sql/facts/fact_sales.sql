CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.fact_sales` AS
SELECT
    oi.order_id,
    oi.order_item_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    DATE(o.order_purchase_timestamp) AS date_key,
    o.order_status,
    o.order_purchase_timestamp,
    o.order_approved_at,
    o.order_delivered_carrier_date,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    oi.shipping_limit_date,
    oi.price,
    oi.freight_value,
    oi.price + oi.freight_value AS total_item_value
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_order_items` AS oi
INNER JOIN `ecommerce-pipeline-vitor.ecommerce_raw.raw_orders` AS o
    ON oi.order_id = o.order_id;
