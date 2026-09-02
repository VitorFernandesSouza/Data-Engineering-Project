SELECT
    r.review_id,
    r.order_id,

    r.review_score,

    CASE
        WHEN r.review_score >= 4 THEN 'Positive'
        WHEN r.review_score = 3 THEN 'Neutral'
        WHEN r.review_score <= 2 THEN 'Negative'
    END AS review_category,

    CASE
        WHEN r.review_comment_message IS NULL
          OR TRIM(r.review_comment_message) = ''
        THEN FALSE
        ELSE TRUE
    END AS has_comment,

    r.review_creation_date,
    r.review_answer_timestamp

FROM `ecommerce-pipeline-vitor.ecommerce_dw.fact_reviews` r