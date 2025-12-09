create database shopping_behavior ;
use shopping_behavior ;
select * from shopping_db ;
describe shopping_db ;
alter table shopping_db rename column `Customer ID` to customer_id ;


alter table shopping_db rename column `Item Purchased` to item_purchased,
rename column `Purchase Amount (USD)` to purchase_amt,
rename column `Review Rating` to review_rating,
rename column `Subscription Status` to subscription_status,
rename column `Shipping Type` to shipping_type,
rename column `Discount Applied` to discount_applied,
rename column `Promo Code Used` to promo_code_used,
rename column `Previous Purchases` to previous_purchases,
rename column `Payment Method` to payment_method,
rename column `Frequency of Purchases` to frequency_of_purchases ;



SELECT 
    *
FROM
    shopping_db;

-- which catagory brings the most revenue  
SELECT 
    Category, SUM(purchase_amt) AS revenue
FROM
    shopping_db
GROUP BY category
ORDER BY revenue DESC;


-- do subscribed customers spend more than non-subscribed 
SELECT 
    subscription_status, SUM(purchase_amt) AS total
FROM
    shopping_db
GROUP BY subscription_status;

-- which payment method is most used ?-- 
SELECT 
    payment_method,
    COUNT(*) AS total_orders,
    SUM(purchase_amt) AS total_revenue
FROM
    shopping_db
GROUP BY payment_method
ORDER BY total_orders DESC;

-- does discount_applies = yes actually increase revenue 
SELECT 
    discount_applied,
    COUNT(*) AS total_orders,
    AVG(purchase_amt) AS avg_value,
    SUM(purchase_amt) AS total
FROM
    shopping_db
GROUP BY discount_applied;

-- which season has highest sales
SELECT 
    season, SUM(purchase_amt) AS total_sales
FROM
    shopping_db
GROUP BY season
ORDER BY total_sales DESC;

-- which frequency_of_purchases gives highest total_sales 
SELECT 
    frequency_of_purchases, SUM(purchase_amt) AS total_sales
FROM
    shopping_db
GROUP BY frequency_of_purchases
ORDER BY total_sales DESC;

-- which location is most profitable ?
SELECT 
    Location, SUM(purchase_amt) AS total
FROM
    shopping_db
GROUP BY Location
ORDER BY total DESC
LIMIT 1;



-- which shipping_type is most commonly used
SELECT 
    shipping_type,
    COUNT(*) AS total_customer,
    SUM(purchase_amt) AS total
FROM
    shopping_db
GROUP BY shipping_type
ORDER BY total DESC;

