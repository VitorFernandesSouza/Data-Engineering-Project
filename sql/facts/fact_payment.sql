CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.fact_payment` AS
SELECT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_order_payments`
WHERE order_id IS NOT NULL;
