CREATE OR REPLACE TABLE `ecommerce-pipeline-vitor.ecommerce_dw.dim_payment` AS
SELECT DISTINCT
    COALESCE(payment_type, 'desconhecido') AS payment_type
FROM `ecommerce-pipeline-vitor.ecommerce_raw.raw_order_payments`;
