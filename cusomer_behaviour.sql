CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(50),
    category VARCHAR(50),
    purchase_amount DECIMAL(10,2),
    location VARCHAR(100),
    size VARCHAR(5),
    color VARCHAR(30),
    season VARCHAR(20),
    review_rating DECIMAL(2,1),
    subscription_status VARCHAR(10),
    shipping_type VARCHAR(20),
    discount_applied VARCHAR(5),
    promo_code_used VARCHAR(5),
    previous_purchases INT,
    payment_method VARCHAR(20),
    frequency_of_purchases VARCHAR(20)
);

SELECT * FROM customers;

--Total Revenue Generated From Gender Male Vs Female Customers?

select gender, sum(purchase_amount) as revenue
from customers 
group by gender;

--Which Customers Used Discount But Still Spent More Than the average purchase amount?

select customer_id 
from customers
where discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount) from customers)

--Top 5 Products With Higest Average Review Rating?

select item_purchased, round(avg(review_rating::numeric),2) as "Average Product Rating"
from customers
group by item_purchased
order by avg(review_rating) desc
limit 5;

--Average Purchase Amounts Between Standard and Express Shipping?

select shipping_type, round(avg(purchase_amount),2)
from customers
where shipping_type in ('Standard', 'Express')
group by shipping_type;

--Do Subscribed Customers Spend More? Compare Average spent and revenue between subscribers and non-subscribers

select subscription_status,
count(customer_id) as total_customers,
round(avg(purchase_amount),2)as avg_spend,
round(sum(purchase_amount),2)as total_revenue
from customers
group by subscription_status
order by avg_spend, total_revenue desc;

--Discount-Dependent Products – Identified 5 products with the highest percentage of discounted purchases.

select item_purchased,
round(sum(case when discount_applied ='Yes' then 1 else 0 end)* 100/count(*),2) as discount_rate
from customers
group by item_purchased
order by discount_rate desc
limit 5;

--Customer Segmentation – Classified customers into New, Returning, and Loyal segments based on purchase history.
with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customers)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;

--Top 3 Products per Category – Listed the most purchased products within each category.

WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customers
    GROUP BY category, item_purchased
)
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;

--Repeat Buyers & Subscriptions – Checked whether customers with >5 purchases are more likely to subscribe.

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customers
WHERE previous_purchases > 5
GROUP BY subscription_status;

--Revenue by Age Group – Calculated total revenue contribution of each age group.

select age, sum(purchase_amount) as total_revenue
from customers
group by age
order by total_revenue desc;
