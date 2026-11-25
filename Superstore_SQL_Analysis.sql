-- Top 10 profitable products
--------------------------------------
SELECT top 10 
	product_name,
	category,
	sub_category,
	round(sum(profit),2) as total_profit
FROM dbo.superstore_sales
group by product_name,category,sub_category
order by total_profit desc;

-- Top 10 customers by sales
-------------------------------------------
select top 10
	customer_name,
	segment,
	sum(sales) as total_sales
from dbo.superstore_sales
group by customer_name,segment
order by total_sales desc;

-- Region-wise total sales
--------------------------------------------
select
	region,
	sum(sales) as total_sales
from dbo.superstore_sales
group by region
order by total_sales desc;

-- Category-wise average profit
--------------------------------------
select
	category,
	round(AVG(profit),2) as avg_profit
from dbo.superstore_sales
group by category
order by  avg_profit desc;

-- Highest discount category
--------------------------------------------
select top 1
	category,
	ROUND(avg(discount)*100,2) as avg_discount
from dbo.superstore_sales
group by category
order by avg_discount desc;

-- Orders with negative profit
---------------------------------------------
select
	order_id,
	round(sum(profit),2) as profit

from dbo.superstore_sales
group by order_id
having sum(profit) < 0
order by profit asc ;

-- Monthly sales trend
------------------------------------------------
select 
	YEAR(order_date) as order_year,
	month(order_date) as order_month,
	sum(sales) as total_sales

from dbo.superstore_sales
group by YEAR(order_date), month(order_date)
order by order_year asc, order_month asc;

-- Market-wise revenue analysis
------------------------------------------------------
select 
	market,
	sum(sales) as total_revenue
from dbo.superstore_sales
group by market
order by total_revenue desc;

-- Top-performing sub-categories
-----------------------------------------------------
SELECT 
    sub_category,
    SUM(sales) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM dbo.superstore_sales
GROUP BY sub_category
ORDER BY total_sales DESC;

-- Ship mode usage analysis
----------------------------------------------------
SELECT 
    ship_mode,
    COUNT(DISTINCT order_id) AS total_orders
FROM dbo.superstore_sales
GROUP BY ship_mode
ORDER BY total_orders DESC;
