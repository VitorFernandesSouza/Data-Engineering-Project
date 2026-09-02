-- View analítica de vendas
-- Objetivo: consolidar dados de pedidos, produtos, clientes e categorias

CREATE OR REPLACE VIEW `ecommerce_views.vw_sales` AS
SELECT
    o.order_id,
    o.customer_id,
    c.customer_city,
    c.customer_state,
    oi.product_id,
    p.product_category_name,
    p.product_category_name_english,
    oi.order_item_id,
    oi.price,
    oi.freight_value,
    o.order_purchase_timestamp,
    o.order_status
FROM `raw.orders` o
LEFT JOIN `raw.order_items` oi
    ON o.order_id = oi.order_id
LEFT JOIN `raw.customers` c
    ON o.customer_id = c.customer_id
LEFT JOIN `raw.products` p
    ON oi.product_id = p.product_id;
