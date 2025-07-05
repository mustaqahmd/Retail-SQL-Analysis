
USE PROJ_SQL

-------------------------------------- DATA EXPLORATION ----------------------------------------

1. -------- JUST PREVIEW OUR DATASET -------  
      SELECT * FROM FINANCIALS
      LIMIT 5;

+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
| Segment    | Country | Product     | Discount_Band | Units_Sold | Gross_Sales | COGS  | Profit    | Date       | Month_Number | Month_Name | Year |
+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
| Government | Canada  |  Carretera  |  None         |     1618.5 | 32,370.00   | 16185 | 16,185.00 | 01-01-2014 |            1 |  January   | 2014 |
| Government | Germany |  Carretera  |  None         |       1321 | 26,420.00   | 13210 | 13,210.00 | 01-01-2014 |            1 |  January   | 2014 |
| Midmarket  | France  |  Carretera  |  None         |       2178 | 32,670.00   | 21780 | 10,890.00 | 01-06-2014 |            6 |  June      | 2014 |
| Midmarket  | Germany |  Carretera  |  None         |        888 | 13,320.00   |  8880 | 4,440.00  | 01-06-2014 |            6 |  June      | 2014 |
| Midmarket  | Mexico  |  Carretera  |  None         |       2470 | 37,050.00   | 24700 | 12,350.00 | 01-06-2014 |            6 |  June      | 2014 |
+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
5 rows in set (0.00 sec)


2. -------- CHECK TOTAL NO OF ROWS --------
      SELECT COUNT(*) FROM FINANCIALS;

+----------+
| COUNT(*) |
+----------+
|      700 |
+----------+
1 row in set (0.00 sec)

  
3. -------- What are the unique segments, countries, and products? ------- 
      SELECT DISTINCT SEGMENT, COUNTRY , PRODUCT FROM FINANCIALS
      LIMIT 5;

+------------+---------+-------------+
| SEGMENT    | COUNTRY | PRODUCT     |
+------------+---------+-------------+
| Government | Canada  |  Carretera  |
| Government | Germany |  Carretera  |
| Midmarket  | France  |  Carretera  |
| Midmarket  | Germany |  Carretera  |
| Midmarket  | Mexico  |  Carretera  |
+------------+---------+-------------+
5 rows in set (0.00 sec)

  
4. -------- How many products are sold in each country? -------
    SELECT COUNT(PRODUCT) AS SOLD_PRODUCTS , COUNTRY FROM FINANCIALS
    GROUP BY COUNTRY;

+---------------+--------------------------+
| SOLD_PRODUCTS | COUNTRY                  |
+---------------+--------------------------+
|           140 | Canada                   |
|           140 | Germany                  |
|           140 | France                   |
|           140 | Mexico                   |
|           140 | United States of America |
+---------------+--------------------------+
5 rows in set (0.00 sec)

  
5. -------- What is the time range of the dataset? (Min/Max of DATE or YEAR) -------
      SELECT MIN(DATE), MAX(DATE) , MIN(YEAR), MAX(YEAR) FROM FINANCIALS;

+------------+------------+-----------+-----------+
| MIN(DATE)  | MAX(DATE)  | MIN(YEAR) | MAX(YEAR) |
+------------+------------+-----------+-----------+
| 01-01-2014 | 01-12-2014 |      2013 |      2014 |
+------------+------------+-----------+-----------+
1 row in set (0.00 sec)

  
6. -------- CHECK THE DATASET WITH LIMIT -----
      SELECT * FROM FINANCIALS
      LIMIT 5;

+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
| Segment    | Country | Product     | Discount_Band | Units_Sold | Gross_Sales | COGS  | Profit    | Date       | Month_Number | Month_Name | Year |
+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
| Government | Canada  |  Carretera  |  None         |     1618.5 | 32,370.00   | 16185 | 16,185.00 | 01-01-2014 |            1 |  January   | 2014 |
| Government | Germany |  Carretera  |  None         |       1321 | 26,420.00   | 13210 | 13,210.00 | 01-01-2014 |            1 |  January   | 2014 |
| Midmarket  | France  |  Carretera  |  None         |       2178 | 32,670.00   | 21780 | 10,890.00 | 01-06-2014 |            6 |  June      | 2014 |
| Midmarket  | Germany |  Carretera  |  None         |        888 | 13,320.00   |  8880 | 4,440.00  | 01-06-2014 |            6 |  June      | 2014 |
| Midmarket  | Mexico  |  Carretera  |  None         |       2470 | 37,050.00   | 24700 | 12,350.00 | 01-06-2014 |            6 |  June      | 2014 |
+------------+---------+-------------+---------------+------------+-------------+-------+-----------+------------+--------------+------------+------+
5 rows in set (0.00 sec)

  
7. -------- CHECK WHETHER THE NULL VALUES EXISTS IN THE DATA -------
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

Result : Empty set (0.00 sec)

-------------------------------- Sales & Profit Analysis ------------------------------------

8. -------- What is the total revenue (Gross_Sales), total cost (COGS), and total profit? -------
        SELECT SUM(GROSS_SALES) AS TOTAL_REVENUE , SUM(COGS) AS TOTAL_COST , SUM(PROFIT) AS TOTAL_PROFIT FROM FINANCIALS;
        
        +---------------+------------+--------------------+
        | TOTAL_REVENUE | TOTAL_COST | TOTAL_PROFIT       |
        +---------------+------------+--------------------+
        |         12127 |  101832652 | 22088.299999999996 |
        +---------------+------------+--------------------+
        1 row in set (0.00 sec)

          
9. -------------- Which product generated the highest total profit? ---------------------
      SELECT DISTINCT PRODUCT, PROFIT FROM FINANCIALS 
      ORDER BY PROFIT DESC
      LIMIT 1;

+---------+--------------+
| PRODUCT | TOTAL_PROFIT |
+---------+--------------+
|  Paseo  |      6675.25 |
+---------+--------------+
1 row in set (0.00 sec)

  
10. -------------- Which country has the highest total sales? --------------------------------
      SELECT COUNTRY , sum(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
      GROUP BY COUNTRY 
      ORDER BY TOTAL_SALES DESC
      LIMIT 1;

+--------------------------+-------------+
| COUNTRY                  | TOTAL_SALES |
+--------------------------+-------------+
| United States of America |        2716 |
+--------------------------+-------------+
1 row in set (0.00 sec)

  
11. -------------- Which segment contributes the most to revenue? ------------------------------
      SELECT SEGMENT, sum(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
      GROUP BY SEGMENT
      ORDER BY TOTAL_SALES DESC
      LIMIT 3;

+------------------+-------------+
| SEGMENT          | TOTAL_SALES |
+------------------+-------------+
| Government       |        5077 |
| Midmarket        |        2536 |
| Channel Partners |        1884 |
+------------------+-------------+
3 rows in set (0.00 sec)

  
12. -------------- Which discount band is most commonly used? -----------------------------------
      SELECT DISCOUNT_BAND, COUNT(*) AS TOTAL_ROWS FROM FINANCIALS
      GROUP BY DISCOUNT_BAND
      ORDER BY TOTAL_ROWS DESC
      LIMIT 1;

+---------------+------------+
| DISCOUNT_BAND | TOTAL_ROWS |
+---------------+------------+
|  High         |        245 |
+---------------+------------+
1 row in set (0.00 sec)

  
-------------------------------- Time-Based Analysis ------------------------------------

13. -------------- What are the monthly sales trends across years? --------------------------------
      SELECT SUM(GROSS_SALES) AS SALES , Month_Name, YEAR FROM FINANCIALS 
      GROUP BY MONTH_NAME , YEAR
      ORDER BY YEAR;

+-------+-------------+------+
| SALES | MONTH_NAME  | YEAR |
+-------+-------------+------+
|  1598 |  October    | 2013 |
|   619 |  September  | 2013 |
|   547 |  November   | 2013 |
|   515 |  December   | 2013 |
|   729 |  January    | 2014 |
|  1490 |  June       | 2014 |
|  1040 |  December   | 2014 |
|   627 |  March      | 2014 |
|   501 |  July       | 2014 |
|   541 |  August     | 2014 |
|   660 |  September  | 2014 |
|   534 |  February   | 2014 |
|   822 |  October    | 2014 |
|   822 |  April      | 2014 |
|   528 |  May        | 2014 |
|   554 |  November   | 2014 |
+-------+-------------+------+
16 rows in set (0.00 sec)

  
14. -------------- Which month has the highest average profit? ----------------------------------------
      SELECT AVG(PROFIT) AS AVERAGE_PROFIT, MONTH_NAME, YEAR FROM FINANCIALS
      GROUP BY MONTH_NAME, YEAR
      ORDER BY AVERAGE_PROFIT DESC
      LIMIT 1;

+-------------+------+-------------------+
| MONTH_NAME  | YEAR | AVERAGE_PROFIT    |
+-------------+------+-------------------+
|  September  | 2014 | 76.24914285714287 |
+-------------+------+-------------------+
1 row in set (0.00 sec)

  
15. -------------- Compare sales by YEAR – are they increasing or decreasing? ------------------------------------------
      SELECT YEAR , SUM(GROSS_SALES) AS TOTAL_SALES FROM FINANCIALS
      GROUP BY YEAR;

+------+-------------+
| YEAR | TOTAL_SALES |
+------+-------------+
| 2014 |        8848 |
| 2013 |        3279 |
+------+-------------+
2 rows in set (0.00 sec)

  
-------------------------------- Product Performance ------------------------------------

16. ----------------------- Top 5 products by total units sold----------------------------------------
      SELECT PRODUCT , SUM(UNITS_SOLD) AS TOTAL_UNITS_SOLD FROM FINANCIALS
      GROUP BY PRODUCT
      ORDER BY TOTAL_UNITS_SOLD DESC
      LIMIT 5;

+------------+------------------+
| PRODUCT    | TOTAL_UNITS_SOLD |
+------------+------------------+
|  Paseo     |         338239.5 |
|  VTT       |           168783 |
|  Velo      |         162424.5 |
|  Amarilla  |           155315 |
|  Montana   |           154198 |
+------------+------------------+
5 rows in set (0.00 sec)

  
17. ----------------------- Which product has the lowest profit margin? ---------------------------------
      SELECT PRODUCT , SUM(PROFIT)/SUM(GROSS_SALES) AS PROFIT FROM FINANCIALS
      GROUP BY PRODUCT
      ORDER BY PROFIT
      LIMIT 1;

+------------+--------------------+
| PRODUCT    | PROFIT_MARGIN      |
+------------+--------------------+
|  Amarilla  | 0.7892287234042553 |
+------------+--------------------+
1 row in set (0.00 sec)

  
18. ----------------------- Which products are sold across the most countries? ----------------------------------
      SELECT  COUNTRY, PRODUCT, SUM(UNITS_SOLD) AS TOTAL_UNITS_SOLD FROM FINANCIALS
      GROUP BY PRODUCT, COUNTRY
      ORDER BY TOTAL_UNITS_SOLD DESC
      LIMIT 5;

+--------------------------+---------+------------------+
| COUNTRY                  | PRODUCT | TOTAL_UNITS_SOLD |
+--------------------------+---------+------------------+
| Canada                   |  Paseo  |          78191.5 |
| France                   |  Paseo  |            71606 |
| United States of America |  Paseo  |          69466.5 |
| Mexico                   |  Paseo  |            63282 |
| Germany                  |  Paseo  |          55693.5 |
+--------------------------+---------+------------------+
5 rows in set (0.01 sec)


  
-------------------------- Advanced Insights -----------------------------------------------

19. -------------------- What is the average discount given per segment? ---------------------------
      SELECT SEGMENT , AVG(DISCOUNT_BAND) AS AVERAGE_DISCOUNT FROM FINANCIALS
      GROUP BY SEGMENT;

+------------------+------------------+
| SEGMENT          | AVERAGE_DISCOUNT |
+------------------+------------------+
| Government       |                0 |
| Midmarket        |                0 |
| Channel Partners |                0 |
| Enterprise       |                0 |
| Small Business   |                0 |
+------------------+------------------+
5 rows in set (0.00 sec)


20. -------------------- Calculate profit margin for each product (Profit ÷ Gross Sales) ----------------------------
      SELECT PRODUCT , SUM(PROFIT)/SUM(GROSS_SALES) AS PROFIT_MARGIN FROM FINANCIALS
      GROUP BY PRODUCT;

+-------------+--------------------+
| PRODUCT     | PROFIT_MARGIN      |
+-------------+--------------------+
|  Carretera  | 2.0915231362467863 |
|  Montana    | 2.3746683512318385 |
|  Paseo      |  1.846542185338866 |
|  Velo       |  1.565538805136795 |
|  VTT        | 2.1215880654475456 |
|  Amarilla   | 0.7892287234042553 |
+-------------+--------------------+
6 rows in set (0.01 sec)


21. -------------------- What’s the profit per unit sold, per product? ------------------------
      SELECT PRODUCT, SUM(PROFIT)/SUM(UNITS_SOLD) AS PROFIT_PER_UNIT FROM FINANCIALS
      GROUP BY PRODUCT;

+-------------+-----------------------+
| PRODUCT     | PROFIT_PER_UNIT       |
+-------------+-----------------------+
|  Carretera  |   0.02216206093458453 |
|  Montana    |  0.024378396606959885 |
|  Paseo      |  0.019735276335259483 |
|  Velo       |  0.017262666654353255 |
|  VTT        |   0.02612028462582132 |
|  Amarilla   | 0.0076425329169751794 |
+-------------+-----------------------+
6 rows in set (0.00 sec)


22. -------------------- Which combination of country & product gives the highest total profit? ---------------------------
      SELECT COUNTRY , PRODUCT , SUM(PROFIT) AS TOTAL_PROFIT FROM FINANCIALS
      GROUP BY COUNTRY , PRODUCT
      ORDER BY TOTAL_PROFIT DESC
      LIMIT 5;

+--------------------------+-----------+--------------------+
| COUNTRY                  | PRODUCT   | TOTAL_PROFIT       |
+--------------------------+-----------+--------------------+
| Canada                   |  Paseo    |            2653.13 |
| United States of America |  Paseo    | 1941.7200000000003 |
| Germany                  |  Paseo    |             1761.4 |
| Mexico                   |  Velo     | 1756.9099999999999 |
| France                   |  Montana  |            1625.62 |
+--------------------------+-----------+--------------------+
5 rows in set (0.00 sec)
