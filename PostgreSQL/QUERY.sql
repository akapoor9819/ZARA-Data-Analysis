SELECT * FROM zara;


-- ------------------------------1. Sales by Price----------------------------------
SELECT
	SUM(price) AS total_sales,
	AVG(price) AS avg_price
FROM zara;


-- ------------------------------2. Total Sales by Sales Volume----------------------------
SELECT
	SUM(sales_volume) AS total_sales,
	AVG(sales_volume) AS avg_sales
FROM zara;


-- ------------------------------3. Sales by Season----------------------------------------
SELECT
	season,
	SUM(sales_volume) AS total_sales
FROM zara
GROUP BY season;


-- ------------------------------4. Product Position by Promotion---------------------------
SELECT
	product_position,
	promotion,
	COUNT(*) AS total_count
FROM zara
GROUP BY product_position, promotion;


-- -------------------------------5. Max Price of Terms by Name and Section------------------
SELECT
	terms,
	name,
	section,
	MAX(price) AS max_price
FROM zara
GROUP BY terms, name, section
ORDER BY max_price DESC
LIMIT 5;


-- ------------------------------6. Origin of Terms and Name------------------------------
SELECT
	terms,
	name,
	origin
FROM zara
GROUP BY terms, name, origin
LIMIT 10;


-- ------------------------------7. Average Sales of Products by Brand---------------------
SELECT
	brand,
	AVG(price) AS avg_price
FROM zara
GROUP BY brand
ORDER BY avg_price DESC;


-- ------------------------------8. Sales Volume for Production on Promotion--------------
SELECT
	product_id,
	name,
	sales_volume
FROM zara
WHERE promotion = 'Yes'
ORDER BY sales_volume DESC;


-- ------------------------------9. Count of Products and Material by Origin----------------
SELECT
	material,
	origin,
	COUNT(product_id) AS product_count
FROM zara
GROUP BY material, origin
ORDER BY product_count DESC;


-- ------------------------------10. Top 10 Best selling Products------------------------
SELECT
	product_id,
	name,
	sales_volume
FROM zara
ORDER BY sales_volume DESC
LIMIT 10;