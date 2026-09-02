SELECT
    order_id,

    COUNT(*) AS payment_count,

    SUM(payment_value) AS total_payment_value,

    MAX(payment_installments) AS max_installments,

    STRING_AGG(
        DISTINCT payment_type,
        ', '
        ORDER BY payment_type
    ) AS payment_types

FROM `ecommerce-pipeline-vitor.ecommerce_dw.fact_payment`

GROUP BY order_id