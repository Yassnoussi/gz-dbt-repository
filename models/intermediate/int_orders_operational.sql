SELECT 
    orders_id
    ,date_date
    ,ROUND(margin + shipping_fee - logcost - ship_cost,2) AS operational_margin
    ,revenue
    --,ROUND(SUM(quantity),2) AS quantity
    ,purchase_cost
    ,margin
FROM {{ref('stg_raw__ship')}} 
JOIN {{ref('int_orders_margin')}} 
USING(orders_id)