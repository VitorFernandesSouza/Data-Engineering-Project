SELECT
    order_id,
    customer_id,
    date_key,
    order_status,

    order_purchase_timestamp,
    order_delivered_customer_date,
    order_estimated_delivery_date,

    DATE_DIFF(
        DATE(order_delivered_customer_date),
        DATE(order_purchase_timestamp),
        DAY
    ) AS delivery_days,

    DATE_DIFF(
        DATE(order_delivered_customer_date),
        DATE(order_estimated_delivery_date),
        DAY
    ) AS delivery_delay_days,

    CASE
        WHEN order_delivered_customer_date IS NULL
            THEN 'Not delivered'

        WHEN DATE(order_delivered_customer_date)
             <= DATE(order_estimated_delivery_date)
            THEN 'On time'

        ELSE 'Delayed'
    END AS delivery_status

FROM `ecommerce-pipeline-vitor.ecommerce_dw.fact_sales`