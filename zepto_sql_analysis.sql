create database zeptosales;
use zeptosales;
 -- checking the number of rows in dataset
 select count(*) as total_rows from zepto_v2;
 -- sample data
 select * from zepto_v2
 limit 10;
 
 -- checking null values are present or not in dataset
 select * from zepto_v2
 where name IS NULL
 OR
  category IS NULL
  OR
   mrp IS NULL
   OR
    discountpercent IS NULL
    OR
     availablequantity IS NULL
     OR 
      discountedsellingprice IS NULL
      or
       weightingms IS NULL
       OR
       outofstock IS NULL
       OR 
       quantity IS NULL;
	-- different category of products 
    select distinct category from zepto_v2
    order by category;
    -- checking products which are outofstock
    select outofstock,count(*) from zepto_v2
    group by outofstock;
    -- product name which are present multiple times
    select name ,count(*) as multipletimes from zepto_v2
    group by name
    having count(*)>1
    order by count(*) desc;
    
    -- data Cleaning 
    -- checking products cost might be zero
    select * from zepto_v2
    where mrp= 0 or discountedsellingprice=0;
    
    -- here we got one product where mrp is zero so we have to drop the column
    SET SQL_SAFE_UPDATES=0; -- MySQL Safe Update Mode prevents accidental mass delete
    delete from zepto_v2
    where mrp=0 ;
    
    -- convert the paise to rupees
    -- UPDATE table_name SET column_name = new_value WHERE condition;
    update zepto_v2 set mrp=mrp/100.0,
    discountedsellingprice=discountedsellingprice/100.0;
    
    -- checking the query change or not
    select mrp,discountedsellingprice from zepto_v2;
    
    -- Bussiness Insight questions
    -- 1.find the top 10 best value products based on discount percentage
    select name,mrp,discountpercent from zepto_v2
    order by discountpercent desc
    limit 10;
    -- Identified high-MRP products that are currently out of stock
    select name,mrp  from zepto_v2
    where outofstock="True" 
    order by mrp desc
    limit 10;
    -- Estimated potential revenue for each product category
    select category ,sum(discountedsellingprice*availablequantity) AS total_revenue
    from zepto_v2
    group by category
    order by total_revenue;
    
    -- Filtered expensive products (MRP > ₹500) with minimal discount less than 10%
    select mrp,name,discountpercent from zepto_v2
    where mrp>500 and discountpercent<10
    order by mrp desc,discountpercent desc;
    
    -- Top 10 best-selling products by quantity
    SELECT name,SUM(quantity) AS total_quantity_sold FROM zepto_v2
GROUP BY name
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- Ranked top 5 categories offering highest average discounts
select category ,round(avg(discountpercent),2) as avg_disc from zepto_v2
group by category
order by avg_disc desc
limit 5;

-- Calculated price per gram to identify value-for-money products
SELECT DISTINCT name ,weightingms,discountedsellingprice,ROUND(discountedsellingprice/weightingms,2) AS price
from zepto_v2
where weightingms>=100
order by price;
    -- Impact of discounts on sales volume
    SELECT
  CASE
    WHEN discountPercent >= 30 THEN 'High Discount'
    WHEN discountPercent BETWEEN 10 AND 29 THEN 'Medium Discount'
    ELSE 'Low Discount'
  END AS discount_category,
  SUM(quantity) AS total_quantity_sold
FROM zepto_v2
GROUP BY discount_category;

-- Measured total inventory weight per product category
select category ,sum(weightingms* availablequantity) as total_Weight from zepto_v2
group by category
order by total_weight;


    
    
    

    
 
 
 