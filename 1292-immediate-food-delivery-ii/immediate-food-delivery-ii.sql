SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN customer_pref_delivery_date = order_date THEN 1 ELSE 0 END) 
        / COUNT(*), 2
    ) AS immediate_percentage
FROM (
    SELECT customer_id, order_date, customer_pref_delivery_date
    FROM Delivery d1
    WHERE order_date = (
        SELECT MIN(order_date) 
        FROM Delivery d2 
        WHERE d2.customer_id = d1.customer_id
    )
) AS first_orders;
