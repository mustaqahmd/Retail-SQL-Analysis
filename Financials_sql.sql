
USE PROJ_SQL


-------------------------------------- DATA EXPLORATION ----------------------------------------

-------- JUST PREVIEW OUR DATASET -------  
SELECT * FROM FINANCIALS;

-------- CHECK TOTAL NO OF ROWS --------
SELECT COUNT(*) FROM FINANCIALS;

-------- What are the unique segments, countries, and products? ------- 
SELECT DISTINCT SEGMENT, COUNTRY , PRODUCT FROM FINANCIALS;

-------- How many products are sold in each country? -------
SELECT COUNT(PRODUCT) AS SOLD_PRODUCTS , COUNTRY FROM FINANCIALS
GROUP BY COUNTRY;

-------- What is the time range of the dataset? (Min/Max of DATE or YEAR) -------
SELECT MIN(DATE), MAX(DATE) , MIN(YEAR), MAX(YEAR) FROM FINANCIALS;

-------- CHECK THE DATASET WITH LIMIT -----
SELECT * FROM FINANCIALS
LIMIT 5;

-------- CHECK WHETHER THE NULL VALUES EXISTS IN THE DATA -------
SELECT * FROM FINANCIALS 
WHERE SEGMENT IS NULL OR 
COUNTRY IS NULL OR 
PRODUCT IS NULL OR
DISCOUNT_BAND IS NULL OR 
UNITS_SOLD IS NULL OR 
GROSS_SALES IS NULL OR
COGS IS NULL OR 
PROFIT IS NULL OR 
DATE IS NULL OR 
MONTH_NUMBER IS NULL OR 
MONTH_NAME IS NULL OR 
YEAR IS NULL;


-------------------------------- Sales & Profit Analysis ------------------------------------

-------- What is the total revenue (Gross_Sales), total cost (COGS), and total profit? -------
SELECT SUM(GROSS_SALES) AS TOTAL_REVENUE , SUM(COGS) AS TOTAL_COST , SUM(PROFIT) AS TOTAL_PROFIT FROM FINANCIALS;

-------------- Which product generated the highest total profit? ---------------------
SELECT DISTINCT PRODUCT, PROFIT FROM FINANCIALS 
ORDER BY PROFIT DESC
LIMIT 1;

-------------- Which country has the highest total sales? --------------------------------
SELECT COUNTRY , sum(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
GROUP BY COUNTRY 
ORDER BY TOTAL_SALES DESC
LIMIT 1;

-------------- Which segment contributes the most to revenue? ------------------------------
SELECT SEGMENT, sum(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
GROUP BY SEGMENT
ORDER BY TOTAL_SALES DESC
LIMIT 3;

-------------- Which discount band is most commonly used? -----------------------------------
SELECT DISCOUNT_BAND, COUNT(*) AS TOTAL_ROWS FROM FINANCIALS
GROUP BY DISCOUNT_BAND
ORDER BY TOTAL_ROWS DESC
LIMIT 1;


-------------------------------- Time-Based Analysis ------------------------------------

-------------- What are the monthly sales trends across years? --------------------------------
SELECT SUM(GROSS_SALES) AS SALES , Month_Name, YEAR FROM FINANCIALS 
GROUP BY MONTH_NAME , YEAR
ORDER BY YEAR;

-------------- Which month has the highest average profit? ----------------------------------------
SELECT AVG(PROFIT) AS AVERAGE_PROFIT, MONTH_NAME, YEAR FROM FINANCIALS
GROUP BY MONTH_NAME, YEAR
ORDER BY AVERAGE_PROFIT DESC
LIMIT 1;

-------------- Compare sales by YEAR – are they increasing or decreasing? ------------------------------------------
SELECT YEAR , SUM(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
GROUP BY YEAR;


-------------------------------- Product Performance ------------------------------------

----------------------- Top 5 products by total units sold----------------------------------------
SELECT PRODUCT , SUM(UNITS_SOLD) AS TOTAL_UNITS_SOLD FROM FINANCIALS
GROUP BY PRODUCT
ORDER BY TOTAL_UNITS_SOLD DESC
LIMIT 5;

----------------------- Which product has the lowest profit margin? ---------------------------------
SELECT PRODUCT , SUM(PROFIT)/SUM(GROSS_SALES) AS PROFIT FROM FINANCIALS
GROUP BY PRODUCT
ORDER BY PROFIT
LIMIT 1;

----------------------- Which products are sold across the most countries? ----------------------------------
SELECT  COUNTRY, PRODUCT, SUM(UNITS_SOLD) AS TOTAL_UNITS_SOLD FROM FINANCIALS
GROUP BY PRODUCT, COUNTRY
ORDER BY TOTAL_UNITS_SOLD DESC
LIMIT 5;


-------------------------- Advanced Insights -----------------------------------------------

-------------------- What is the average discount given per segment? ---------------------------
SELECT SEGMENT , AVG(DISCOUNT_BAND) AS AVERAGE_DISCOUNT FROM FINANCIALS
GROUP BY SEGMENT;

-------------------- Calculate profit margin for each product (Profit ÷ Gross Sales) ----------------------------
SELECT PRODUCT , SUM(PROFIT)/SUM(GROSS_SALES) AS PROFIT_MARGIN FROM FINANCIALS
GROUP BY PRODUCT;

-------------------- What’s the profit per unit sold, per product? ------------------------
SELECT PRODUCT, SUM(PROFIT)/SUM(UNITS_SOLD) AS PROFIT_PER_UNIT FROM FINANCIALS
GROUP BY PRODUCT;

-------------------- Which combination of country & product gives the highest total profit? ---------------------------
SELECT COUNTRY , PRODUCT , SUM(PROFIT) AS TOTAL_PROFIT FROM FINANCIALS
GROUP BY COUNTRY , PRODUCT
ORDER BY TOTAL_PROFIT DESC
LIMIT 5;