
USE PROJ_SQL

-------------------------------------- DATA EXPLORATION ----------------------------------------

-------- JUST PREVIEW OUR DATASET -------  
SELECT * FROM FINANCIALS;

+------------------+--------------------------+-------------+---------------+------------+--------------+--------+-------------+------------+--------------+-------------+------+
| Segment          | Country                  | Product     | Discount_Band | Units_Sold | Gross_Sales  | COGS   | Profit      | Date       | Month_Number | Month_Name  | Year |
+------------------+--------------------------+-------------+---------------+------------+--------------+--------+-------------+------------+--------------+-------------+------+
| Government       | Canada                   |  Carretera  |  None         |     1618.5 | 32,370.00    |  16185 | 16,185.00   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Germany                  |  Carretera  |  None         |       1321 | 26,420.00    |  13210 | 13,210.00   | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | France                   |  Carretera  |  None         |       2178 | 32,670.00    |  21780 | 10,890.00   | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Germany                  |  Carretera  |  None         |        888 | 13,320.00    |   8880 | 4,440.00    | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Mexico                   |  Carretera  |  None         |       2470 | 37,050.00    |  24700 | 12,350.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Carretera  |  None         |       1513 | 5,29,550.00  | 393380 | 1,36,170.00 | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | Germany                  |  Montana    |  None         |        921 | 13,815.00    |   9210 | 4,605.00    | 01-03-2014 |            3 |  March      | 2014 |
| Channel Partners | Canada                   |  Montana    |  None         |       2518 | 30,216.00    |   7554 | 22,662.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | France                   |  Montana    |  None         |       1899 | 37,980.00    |  18990 | 18,990.00   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Germany                  |  Montana    |  None         |       1545 | 18,540.00    |   4635 | 13,905.00   | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Mexico                   |  Montana    |  None         |       2470 | 37,050.00    |  24700 | 12,350.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Canada                   |  Montana    |  None         |     2665.5 | 3,33,187.50  | 319860 | 13,327.50   | 01-07-2014 |            7 |  July       | 2014 |
| Small Business   | Mexico                   |  Montana    |  None         |        958 | 2,87,400.00  | 239500 | 47,900.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Germany                  |  Montana    |  None         |       2146 | 15,022.00    |  10730 | 4,292.00    | 01-09-2014 |            9 |  September  | 2014 |
| Enterprise       | Canada                   |  Montana    |  None         |        345 | 43,125.00    |  41400 | 1,725.00    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | United States of America |  Montana    |  None         |        615 | 9,225.00     |   6150 | 3,075.00    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  Paseo      |  None         |        292 | 5,840.00     |   2920 | 2,920.00    | 01-02-2014 |            2 |  February   | 2014 |
| Midmarket        | Mexico                   |  Paseo      |  None         |        974 | 14,610.00    |   9740 | 4,870.00    | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Canada                   |  Paseo      |  None         |       2518 | 30,216.00    |   7554 | 22,662.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Paseo      |  None         |       1006 | 3,52,100.00  | 261560 | 90,540.00   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Germany                  |  Paseo      |  None         |        367 | 4,404.00     |   1101 | 3,303.00    | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Mexico                   |  Paseo      |  None         |        883 | 6,181.00     |   4415 | 1,766.00    | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | France                   |  Paseo      |  None         |        549 | 8,235.00     |   5490 | 2,745.00    | 01-09-2013 |            9 |  September  | 2013 |
| Small Business   | Mexico                   |  Paseo      |  None         |        788 | 2,36,400.00  | 197000 | 39,400.00   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | Mexico                   |  Paseo      |  None         |       2472 | 37,080.00    |  24720 | 12,360.00   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | United States of America |  Paseo      |  None         |       1143 | 8,001.00     |   5715 | 2,286.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Canada                   |  Paseo      |  None         |       1725 | 6,03,750.00  | 448500 | 1,55,250.00 | 01-11-2013 |           11 |  November   | 2013 |
| Channel Partners | United States of America |  Paseo      |  None         |        912 | 10,944.00    |   2736 | 8,208.00    | 01-11-2013 |           11 |  November   | 2013 |
| Midmarket        | Canada                   |  Paseo      |  None         |       2152 | 32,280.00    |  21520 | 10,760.00   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Canada                   |  Paseo      |  None         |       1817 | 36,340.00    |  18170 | 18,170.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Germany                  |  Paseo      |  None         |       1513 | 5,29,550.00  | 393380 | 1,36,170.00 | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  Velo       |  None         |       1493 | 10,451.00    |   7465 | 2,986.00    | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | France                   |  Velo       |  None         |       1804 | 2,25,500.00  | 216480 | 9,020.00    | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Germany                  |  Velo       |  None         |       2161 | 25,932.00    |   6483 | 19,449.00   | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Germany                  |  Velo       |  None         |       1006 | 3,52,100.00  | 261560 | 90,540.00   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Germany                  |  Velo       |  None         |       1545 | 18,540.00    |   4635 | 13,905.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | United States of America |  Velo       |  None         |       2821 | 3,52,625.00  | 338520 | 14,105.00   | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | Canada                   |  Velo       |  None         |        345 | 43,125.00    |  41400 | 1,725.00    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Canada                   |  VTT        |  None         |       2001 | 6,00,300.00  | 500250 | 1,00,050.00 | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Germany                  |  VTT        |  None         |       2838 | 34,056.00    |   8514 | 25,542.00   | 01-04-2014 |            4 |  April      | 2014 |
| Midmarket        | France                   |  VTT        |  None         |       2178 | 32,670.00    |  21780 | 10,890.00   | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Germany                  |  VTT        |  None         |        888 | 13,320.00    |   8880 | 4,440.00    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | France                   |  VTT        |  None         |       1527 | 5,34,450.00  | 397020 | 1,37,430.00 | 01-09-2013 |            9 |  September  | 2013 |
| Small Business   | France                   |  VTT        |  None         |       2151 | 6,45,300.00  | 537750 | 1,07,550.00 | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  VTT        |  None         |       1817 | 36,340.00    |  18170 | 18,170.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Amarilla   |  None         |       2750 | 9,62,500.00  | 715000 | 2,47,500.00 | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | United States of America |  Amarilla   |  None         |       1953 | 23,436.00    |   5859 | 17,577.00   | 01-04-2014 |            4 |  April      | 2014 |
| Enterprise       | Germany                  |  Amarilla   |  None         |     4219.5 | 5,27,437.50  | 506340 | 21,097.50   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | France                   |  Amarilla   |  None         |       1899 | 37,980.00    |  18990 | 18,990.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Amarilla   |  None         |       1686 | 11,802.00    |   8430 | 3,372.00    | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | United States of America |  Amarilla   |  None         |       2141 | 25,692.00    |   6423 | 19,269.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | United States of America |  Amarilla   |  None         |       1143 | 8,001.00     |   5715 | 2,286.00    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | United States of America |  Amarilla   |  None         |        615 | 9,225.00     |   6150 | 3,075.00    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Paseo      |  Low          |       3945 | 27,615.00    |  19725 | 7,613.85    | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | France                   |  Paseo      |  Low          |       2296 | 34,440.00    |  22960 | 11,135.60   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | France                   |  Paseo      |  Low          |       1030 | 7,210.00     |   5150 | 1,987.90    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | France                   |  Velo       |  Low          |        639 | 4,473.00     |   3195 | 1,233.27    | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Canada                   |  VTT        |  Low          |       1326 | 9,282.00     |   6630 | 2,559.18    | 01-03-2014 |            3 |  March      | 2014 |
| Channel Partners | United States of America |  Carretera  |  Low          |       1858 | 22,296.00    |   5574 | 16,499.04   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Mexico                   |  Carretera  |  Low          |       1210 | 4,23,500.00  | 314600 | 1,04,665.00 | 01-03-2014 |            3 |  March      | 2014 |
| Government       | United States of America |  Carretera  |  Low          |       2529 | 17,703.00    |  12645 | 4,880.97    | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | Canada                   |  Carretera  |  Low          |       1445 | 17,340.00    |   4335 | 12,831.60   | 01-09-2014 |            9 |  September  | 2014 |
| Enterprise       | United States of America |  Carretera  |  Low          |        330 | 41,250.00    |  39600 | 1,237.50    | 01-09-2013 |            9 |  September  | 2013 |
| Channel Partners | France                   |  Carretera  |  Low          |       2671 | 32,052.00    |   8013 | 23,718.48   | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | Germany                  |  Carretera  |  Low          |        766 | 9,192.00     |   2298 | 6,802.08    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Mexico                   |  Carretera  |  Low          |        494 | 1,48,200.00  | 123500 | 23,218.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Mexico                   |  Carretera  |  Low          |       1397 | 4,88,950.00  | 363220 | 1,20,840.50 | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  Carretera  |  Low          |       2155 | 7,54,250.00  | 560300 | 1,86,407.50 | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | Mexico                   |  Montana    |  Low          |       2214 | 33,210.00    |  22140 | 10,737.90   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | United States of America |  Montana    |  Low          |       2301 | 6,90,300.00  | 575250 | 1,08,147.00 | 01-04-2014 |            4 |  April      | 2014 |
| Government       | France                   |  Montana    |  Low          |     1375.5 | 27,510.00    |  13755 | 13,479.90   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Canada                   |  Montana    |  Low          |       1830 | 12,810.00    |   9150 | 3,531.90    | 01-08-2014 |            8 |  August     | 2014 |
| Small Business   | United States of America |  Montana    |  Low          |       2498 | 7,49,400.00  | 624500 | 1,17,406.00 | 01-09-2013 |            9 |  September  | 2013 |
| Enterprise       | United States of America |  Montana    |  Low          |        663 | 82,875.00    |  79560 | 2,486.25    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | United States of America |  Paseo      |  Low          |       1514 | 22,710.00    |  15140 | 7,342.90    | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  Paseo      |  Low          |     4492.5 | 31,447.50    |  22463 | 8,670.53    | 01-04-2014 |            4 |  April      | 2014 |
| Enterprise       | United States of America |  Paseo      |  Low          |        727 | 90,875.00    |  87240 | 2,726.25    | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | France                   |  Paseo      |  Low          |        787 | 98,375.00    |  94440 | 2,951.25    | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Mexico                   |  Paseo      |  Low          |       1823 | 2,27,875.00  | 218760 | 6,836.25    | 01-07-2014 |            7 |  July       | 2014 |
| Midmarket        | Germany                  |  Paseo      |  Low          |        747 | 11,205.00    |   7470 | 3,622.95    | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | Germany                  |  Paseo      |  Low          |        766 | 9,192.00     |   2298 | 6,802.08    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | United States of America |  Paseo      |  Low          |       2905 | 8,71,500.00  | 726250 | 1,36,535.00 | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Paseo      |  Low          |       2155 | 7,54,250.00  | 560300 | 1,86,407.50 | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Velo       |  Low          |       3864 | 77,280.00    |  38640 | 37,867.20   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Mexico                   |  Velo       |  Low          |        362 | 2,534.00     |   1810 | 698.66      | 01-05-2014 |            5 |  May        | 2014 |
| Enterprise       | Canada                   |  Velo       |  Low          |        923 | 1,15,375.00  | 110760 | 3,461.25    | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | United States of America |  Velo       |  Low          |        663 | 82,875.00    |  79560 | 2,486.25    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Velo       |  Low          |       2092 | 14,644.00    |  10460 | 4,037.56    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Germany                  |  VTT        |  Low          |        263 | 1,841.00     |   1315 | 507.59      | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Canada                   |  VTT        |  Low          |      943.5 | 3,30,225.00  | 245310 | 81,612.75   | 01-04-2014 |            4 |  April      | 2014 |
| Enterprise       | United States of America |  VTT        |  Low          |        727 | 90,875.00    |  87240 | 2,726.25    | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | France                   |  VTT        |  Low          |        787 | 98,375.00    |  94440 | 2,951.25    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Germany                  |  VTT        |  Low          |        986 | 2,95,800.00  | 246500 | 46,342.00   | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | Mexico                   |  VTT        |  Low          |        494 | 1,48,200.00  | 123500 | 23,218.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Mexico                   |  VTT        |  Low          |       1397 | 4,88,950.00  | 363220 | 1,20,840.50 | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | France                   |  VTT        |  Low          |       1744 | 2,18,000.00  | 209280 | 6,540.00    | 01-11-2014 |           11 |  November   | 2014 |
| Channel Partners | United States of America |  Amarilla   |  Low          |       1989 | 23,868.00    |   5967 | 17,662.32   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | France                   |  Amarilla   |  Low          |        321 | 4,815.00     |   3210 | 1,556.85    | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | Canada                   |  Carretera  |  Low          |      742.5 | 92,812.50    |  89100 | 1,856.25    | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | Canada                   |  Carretera  |  Low          |       1295 | 15,540.00    |   3885 | 11,344.20   | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | Germany                  |  Carretera  |  Low          |        214 | 64,200.00    |  53500 | 9,416.00    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Carretera  |  Low          |       2145 | 15,015.00    |  10725 | 3,989.70    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Canada                   |  Carretera  |  Low          |       2852 | 9,98,200.00  | 741520 | 2,36,716.00 | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | United States of America |  Montana    |  Low          |       1142 | 13,704.00    |   3426 | 10,003.92   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Montana    |  Low          |       1566 | 31,320.00    |  15660 | 15,033.60   | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Mexico                   |  Montana    |  Low          |        690 | 8,280.00     |   2070 | 6,044.40    | 01-11-2014 |           11 |  November   | 2014 |
| Enterprise       | Mexico                   |  Montana    |  Low          |       1660 | 2,07,500.00  | 199200 | 4,150.00    | 01-11-2013 |           11 |  November   | 2013 |
| Midmarket        | Canada                   |  Paseo      |  Low          |       2363 | 35,445.00    |  23630 | 11,106.10   | 01-02-2014 |            2 |  February   | 2014 |
| Small Business   | France                   |  Paseo      |  Low          |        918 | 2,75,400.00  | 229500 | 40,392.00   | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | Germany                  |  Paseo      |  Low          |       1728 | 5,18,400.00  | 432000 | 76,032.00   | 01-05-2014 |            5 |  May        | 2014 |
| Channel Partners | United States of America |  Paseo      |  Low          |       1142 | 13,704.00    |   3426 | 10,003.92   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Mexico                   |  Paseo      |  Low          |        662 | 82,750.00    |  79440 | 1,655.00    | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Canada                   |  Paseo      |  Low          |       1295 | 15,540.00    |   3885 | 11,344.20   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Germany                  |  Paseo      |  Low          |        809 | 1,01,125.00  |  97080 | 2,022.50    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | Mexico                   |  Paseo      |  Low          |       2145 | 2,68,125.00  | 257400 | 5,362.50    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | France                   |  Paseo      |  Low          |       1785 | 21,420.00    |   5355 | 15,636.60   | 01-11-2013 |           11 |  November   | 2013 |
| Small Business   | Canada                   |  Paseo      |  Low          |       1916 | 5,74,800.00  | 479000 | 84,304.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  Paseo      |  Low          |       2852 | 9,98,200.00  | 741520 | 2,36,716.00 | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Canada                   |  Paseo      |  Low          |       2729 | 3,41,125.00  | 327480 | 6,822.50    | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | United States of America |  Paseo      |  Low          |       1925 | 28,875.00    |  19250 | 9,047.50    | 01-12-2013 |           12 |  December   | 2013 |
| Government       | United States of America |  Paseo      |  Low          |       2013 | 14,091.00    |  10065 | 3,744.18    | 01-12-2013 |           12 |  December   | 2013 |
| Channel Partners | France                   |  Paseo      |  Low          |       1055 | 12,660.00    |   3165 | 9,241.80    | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Mexico                   |  Paseo      |  Low          |       1084 | 13,008.00    |   3252 | 9,495.84    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  Velo       |  Low          |       1566 | 31,320.00    |  15660 | 15,033.60   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  Velo       |  Low          |       2966 | 10,38,100.00 | 771160 | 2,46,178.00 | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Velo       |  Low          |       2877 | 10,06,950.00 | 748020 | 2,38,791.00 | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Germany                  |  Velo       |  Low          |        809 | 1,01,125.00  |  97080 | 2,022.50    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | Mexico                   |  Velo       |  Low          |       2145 | 2,68,125.00  | 257400 | 5,362.50    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | France                   |  Velo       |  Low          |       1055 | 12,660.00    |   3165 | 9,241.80    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  Velo       |  Low          |        544 | 10,880.00    |   5440 | 5,222.40    | 01-12-2013 |           12 |  December   | 2013 |
| Channel Partners | Mexico                   |  Velo       |  Low          |       1084 | 13,008.00    |   3252 | 9,495.84    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Mexico                   |  VTT        |  Low          |        662 | 82,750.00    |  79440 | 1,655.00    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Germany                  |  VTT        |  Low          |        214 | 64,200.00    |  53500 | 9,416.00    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  VTT        |  Low          |       2877 | 10,06,950.00 | 748020 | 2,38,791.00 | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Canada                   |  VTT        |  Low          |       2729 | 3,41,125.00  | 327480 | 6,822.50    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  VTT        |  Low          |        266 | 93,100.00    |  69160 | 22,078.00   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Mexico                   |  VTT        |  Low          |       1940 | 6,79,000.00  | 504400 | 1,61,020.00 | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Germany                  |  Amarilla   |  Low          |        259 | 77,700.00    |  64750 | 11,396.00   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Mexico                   |  Amarilla   |  Low          |       1101 | 3,30,300.00  | 275250 | 48,444.00   | 01-03-2014 |            3 |  March      | 2014 |
| Enterprise       | Germany                  |  Amarilla   |  Low          |       2276 | 2,84,500.00  | 273120 | 5,690.00    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Germany                  |  Amarilla   |  Low          |       2966 | 10,38,100.00 | 771160 | 2,46,178.00 | 01-10-2013 |           10 |  October    | 2013 |
| Government       | United States of America |  Amarilla   |  Low          |       1236 | 24,720.00    |  12360 | 11,865.60   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Amarilla   |  Low          |        941 | 18,820.00    |   9410 | 9,033.60    | 01-11-2014 |           11 |  November   | 2014 |
| Small Business   | Canada                   |  Amarilla   |  Low          |       1916 | 5,74,800.00  | 479000 | 84,304.00   | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | France                   |  Carretera  |  Low          |     4243.5 | 5,30,437.50  | 509220 | 5,304.38    | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  Carretera  |  Low          |       2580 | 51,600.00    |  25800 | 24,252.00   | 01-04-2014 |            4 |  April      | 2014 |
| Small Business   | Germany                  |  Carretera  |  Low          |        689 | 2,06,700.00  | 172250 | 28,249.00   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | United States of America |  Carretera  |  Low          |       1947 | 23,364.00    |   5841 | 16,822.08   | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | Canada                   |  Carretera  |  Low          |        908 | 10,896.00    |   2724 | 7,845.12    | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Germany                  |  Montana    |  Low          |       1958 | 13,706.00    |   9790 | 3,504.82    | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | France                   |  Montana    |  Low          |       1901 | 22,812.00    |   5703 | 16,424.64   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | France                   |  Montana    |  Low          |        544 | 3,808.00     |   2720 | 973.76      | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Germany                  |  Montana    |  Low          |       1797 | 6,28,950.00  | 467220 | 1,42,861.50 | 01-09-2013 |            9 |  September  | 2013 |
| Enterprise       | France                   |  Montana    |  Low          |       1287 | 1,60,875.00  | 154440 | 1,608.75    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Germany                  |  Montana    |  Low          |       1706 | 2,13,250.00  | 204720 | 2,132.50    | 01-12-2014 |           12 |  December   | 2014 |
| Small Business   | France                   |  Paseo      |  Low          |     2434.5 | 7,30,350.00  | 608625 | 99,814.50   | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | Canada                   |  Paseo      |  Low          |       1774 | 2,21,750.00  | 212880 | 2,217.50    | 01-03-2014 |            3 |  March      | 2014 |
| Channel Partners | France                   |  Paseo      |  Low          |       1901 | 22,812.00    |   5703 | 16,424.64   | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Germany                  |  Paseo      |  Low          |        689 | 2,06,700.00  | 172250 | 28,249.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Germany                  |  Paseo      |  Low          |       1570 | 1,96,250.00  | 188400 | 1,962.50    | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | United States of America |  Paseo      |  Low          |     1369.5 | 16,434.00    |   4109 | 11,832.48   | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | Canada                   |  Paseo      |  Low          |       2009 | 2,51,125.00  | 241080 | 2,511.25    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Germany                  |  Paseo      |  Low          |       1945 | 29,175.00    |  19450 | 8,849.75    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | France                   |  Paseo      |  Low          |       1287 | 1,60,875.00  | 154440 | 1,608.75    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Germany                  |  Paseo      |  Low          |       1706 | 2,13,250.00  | 204720 | 2,132.50    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Canada                   |  Velo       |  Low          |       2009 | 2,51,125.00  | 241080 | 2,511.25    | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | United States of America |  VTT        |  Low          |       2844 | 8,53,200.00  | 711000 | 1,16,604.00 | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Mexico                   |  VTT        |  Low          |       1916 | 22,992.00    |   5748 | 16,554.24   | 01-04-2014 |            4 |  April      | 2014 |
| Enterprise       | Germany                  |  VTT        |  Low          |       1570 | 1,96,250.00  | 188400 | 1,962.50    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Canada                   |  VTT        |  Low          |       1874 | 5,62,200.00  | 468500 | 76,834.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Mexico                   |  VTT        |  Low          |       1642 | 5,74,700.00  | 426920 | 1,30,539.00 | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | Germany                  |  VTT        |  Low          |       1945 | 29,175.00    |  19450 | 8,849.75    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Carretera  |  Low          |        831 | 16,620.00    |   8310 | 7,811.40    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Mexico                   |  Paseo      |  Low          |       1760 | 12,320.00    |   8800 | 3,150.40    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Canada                   |  Velo       |  Low          |     3850.5 | 77,010.00    |  38505 | 36,194.70   | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | Germany                  |  VTT        |  Low          |       2479 | 29,748.00    |   7437 | 21,418.56   | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | Mexico                   |  Montana    |  Low          |       2031 | 30,465.00    |  20310 | 8,936.40    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Mexico                   |  Paseo      |  Low          |       2031 | 30,465.00    |  20310 | 8,936.40    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | France                   |  Paseo      |  Low          |       2261 | 33,915.00    |  22610 | 9,948.40    | 01-12-2013 |           12 |  December   | 2013 |
| Government       | United States of America |  Velo       |  Low          |        736 | 14,720.00    |   7360 | 6,771.20    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Canada                   |  Carretera  |  Low          |       2851 | 19,957.00    |  14255 | 4,903.72    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Germany                  |  Carretera  |  Low          |       2021 | 6,06,300.00  | 505250 | 76,798.00   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | United States of America |  Carretera  |  Low          |        274 | 95,900.00    |  71240 | 20,824.00   | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | Canada                   |  Montana    |  Low          |       1967 | 29,505.00    |  19670 | 8,654.80    | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Germany                  |  Montana    |  Low          |       1859 | 5,57,700.00  | 464750 | 70,642.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Canada                   |  Montana    |  Low          |       2851 | 19,957.00    |  14255 | 4,903.72    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Germany                  |  Montana    |  Low          |       2021 | 6,06,300.00  | 505250 | 76,798.00   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Mexico                   |  Montana    |  Low          |       1138 | 1,42,250.00  | 136560 | -           | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  Paseo      |  Low          |       4251 | 29,757.00    |  21255 | 7,311.72    | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | Germany                  |  Paseo      |  Low          |        795 | 99,375.00    |  95400 | -           | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Germany                  |  Paseo      |  Low          |     1414.5 | 4,24,350.00  | 353625 | 53,751.00   | 01-04-2014 |            4 |  April      | 2014 |
| Small Business   | United States of America |  Paseo      |  Low          |       2918 | 8,75,400.00  | 729500 | 1,10,884.00 | 01-05-2014 |            5 |  May        | 2014 |
| Government       | United States of America |  Paseo      |  Low          |       3450 | 12,07,500.00 | 897000 | 2,62,200.00 | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | France                   |  Paseo      |  Low          |       2988 | 3,73,500.00  | 358560 | -           | 01-07-2014 |            7 |  July       | 2014 |
| Midmarket        | Canada                   |  Paseo      |  Low          |        218 | 3,270.00     |   2180 | 959.2       | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  Paseo      |  Low          |       2074 | 41,480.00    |  20740 | 19,080.80   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | United States of America |  Paseo      |  Low          |       1056 | 21,120.00    |  10560 | 9,715.20    | 01-09-2014 |            9 |  September  | 2014 |
| Midmarket        | United States of America |  Paseo      |  Low          |        671 | 10,065.00    |   6710 | 2,952.40    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Mexico                   |  Paseo      |  Low          |       1514 | 22,710.00    |  15140 | 6,661.60    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | United States of America |  Paseo      |  Low          |        274 | 95,900.00    |  71240 | 20,824.00   | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Mexico                   |  Paseo      |  Low          |       1138 | 1,42,250.00  | 136560 | -           | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | United States of America |  Velo       |  Low          |       1465 | 17,580.00    |   4395 | 12,481.80   | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Canada                   |  Velo       |  Low          |       2646 | 52,920.00    |  26460 | 24,343.20   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | France                   |  Velo       |  Low          |       2177 | 7,61,950.00  | 566020 | 1,65,452.00 | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | France                   |  VTT        |  Low          |        866 | 10,392.00    |   2598 | 7,378.32    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | United States of America |  VTT        |  Low          |        349 | 1,22,150.00  |  90740 | 26,524.00   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | France                   |  VTT        |  Low          |       2177 | 7,61,950.00  | 566020 | 1,65,452.00 | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Mexico                   |  VTT        |  Low          |       1514 | 22,710.00    |  15140 | 6,661.60    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Mexico                   |  Amarilla   |  Low          |       1865 | 6,52,750.00  | 484900 | 1,41,740.00 | 01-02-2014 |            2 |  February   | 2014 |
| Enterprise       | Mexico                   |  Amarilla   |  Low          |       1074 | 1,34,250.00  | 128880 | -           | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  Amarilla   |  Low          |       1907 | 6,67,450.00  | 495820 | 1,44,932.00 | 01-09-2014 |            9 |  September  | 2014 |
| Midmarket        | United States of America |  Amarilla   |  Low          |        671 | 10,065.00    |   6710 | 2,952.40    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Amarilla   |  Low          |       1778 | 6,22,300.00  | 462280 | 1,35,128.00 | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Germany                  |  Montana    |  Medium       |       1159 | 8,113.00     |   5795 | 1,912.35    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Paseo      |  Medium       |       1372 | 9,604.00     |   6860 | 2,263.80    | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Canada                   |  Paseo      |  Medium       |       2349 | 16,443.00    |  11745 | 3,875.85    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Mexico                   |  Paseo      |  Medium       |       2689 | 18,823.00    |  13445 | 4,436.85    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Canada                   |  Paseo      |  Medium       |       2431 | 29,172.00    |   7293 | 20,420.40   | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Canada                   |  Velo       |  Medium       |       2431 | 29,172.00    |   7293 | 20,420.40   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  VTT        |  Medium       |       2689 | 18,823.00    |  13445 | 4,436.85    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Amarilla   |  Medium       |       1683 | 11,781.00    |   8415 | 2,776.95    | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | Mexico                   |  Amarilla   |  Medium       |       1123 | 13,476.00    |   3369 | 9,433.20    | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Germany                  |  Amarilla   |  Medium       |       1159 | 8,113.00     |   5795 | 1,912.35    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | France                   |  Carretera  |  Medium       |       1865 | 22,380.00    |   5595 | 15,666.00   | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Germany                  |  Carretera  |  Medium       |       1116 | 13,392.00    |   3348 | 9,374.40    | 01-02-2014 |            2 |  February   | 2014 |
| Government       | France                   |  Carretera  |  Medium       |       1563 | 31,260.00    |  15630 | 14,067.00   | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | United States of America |  Carretera  |  Medium       |        991 | 2,97,300.00  | 247750 | 34,685.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Carretera  |  Medium       |       1016 | 7,112.00     |   5080 | 1,676.40    | 01-11-2013 |           11 |  November   | 2013 |
| Midmarket        | Mexico                   |  Carretera  |  Medium       |       2791 | 41,865.00    |  27910 | 11,861.75   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | United States of America |  Carretera  |  Medium       |        570 | 3,990.00     |   2850 | 940.5       | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Carretera  |  Medium       |       2487 | 17,409.00    |  12435 | 4,103.55    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Montana    |  Medium       |     1384.5 | 4,84,575.00  | 359970 | 1,00,376.25 | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | United States of America |  Montana    |  Medium       |       3627 | 4,53,375.00  | 435240 | -4,533.75   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Mexico                   |  Montana    |  Medium       |        720 | 2,52,000.00  | 187200 | 52,200.00   | 01-09-2013 |            9 |  September  | 2013 |
| Channel Partners | Germany                  |  Montana    |  Medium       |       2342 | 28,104.00    |   7026 | 19,672.80   | 01-11-2014 |           11 |  November   | 2014 |
| Small Business   | Mexico                   |  Montana    |  Medium       |       1100 | 3,30,000.00  | 275000 | 38,500.00   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | France                   |  Paseo      |  Medium       |       1303 | 26,060.00    |  13030 | 11,727.00   | 01-02-2014 |            2 |  February   | 2014 |
| Enterprise       | United States of America |  Paseo      |  Medium       |       2992 | 3,74,000.00  | 359040 | -3,740.00   | 01-03-2014 |            3 |  March      | 2014 |
| Enterprise       | France                   |  Paseo      |  Medium       |       2385 | 2,98,125.00  | 286200 | -2,981.25   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Mexico                   |  Paseo      |  Medium       |       1607 | 4,82,100.00  | 401750 | 56,245.00   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | United States of America |  Paseo      |  Medium       |       2327 | 16,289.00    |  11635 | 3,839.55    | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | United States of America |  Paseo      |  Medium       |        991 | 2,97,300.00  | 247750 | 34,685.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Paseo      |  Medium       |        602 | 2,10,700.00  | 156520 | 43,645.00   | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | France                   |  Paseo      |  Medium       |       2620 | 39,300.00    |  26200 | 11,135.00   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  Paseo      |  Medium       |       1228 | 4,29,800.00  | 319280 | 89,030.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Paseo      |  Medium       |       1389 | 27,780.00    |  13890 | 12,501.00   | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | United States of America |  Paseo      |  Medium       |        861 | 1,07,625.00  | 103320 | -1,076.25   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | France                   |  Paseo      |  Medium       |        704 | 88,000.00    |  84480 | -880        | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Paseo      |  Medium       |       1802 | 36,040.00    |  18020 | 16,218.00   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | United States of America |  Paseo      |  Medium       |       2663 | 53,260.00    |  26630 | 23,967.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Paseo      |  Medium       |       2136 | 14,952.00    |  10680 | 3,524.40    | 01-12-2013 |           12 |  December   | 2013 |
| Midmarket        | Germany                  |  Paseo      |  Medium       |       2116 | 31,740.00    |  21160 | 8,993.00    | 01-12-2013 |           12 |  December   | 2013 |
| Midmarket        | United States of America |  Velo       |  Medium       |        555 | 8,325.00     |   5550 | 2,358.75    | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | Mexico                   |  Velo       |  Medium       |       2861 | 42,915.00    |  28610 | 12,159.25   | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | Germany                  |  Velo       |  Medium       |        807 | 1,00,875.00  |  96840 | -1,008.75   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  Velo       |  Medium       |        602 | 2,10,700.00  | 156520 | 43,645.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Velo       |  Medium       |       2832 | 56,640.00    |  28320 | 25,488.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | France                   |  Velo       |  Medium       |       1579 | 31,580.00    |  15790 | 14,211.00   | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | United States of America |  Velo       |  Medium       |        861 | 1,07,625.00  | 103320 | -1,076.25   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | France                   |  Velo       |  Medium       |        704 | 88,000.00    |  84480 | -880        | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Velo       |  Medium       |       1033 | 20,660.00    |  10330 | 9,297.00    | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Germany                  |  Velo       |  Medium       |       1250 | 3,75,000.00  | 312500 | 43,750.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  VTT        |  Medium       |       1389 | 27,780.00    |  13890 | 12,501.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | United States of America |  VTT        |  Medium       |       1265 | 25,300.00    |  12650 | 11,385.00   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Germany                  |  VTT        |  Medium       |       2297 | 45,940.00    |  22970 | 20,673.00   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | United States of America |  VTT        |  Medium       |       2663 | 53,260.00    |  26630 | 23,967.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  VTT        |  Medium       |        570 | 3,990.00     |   2850 | 940.5       | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  VTT        |  Medium       |       2487 | 17,409.00    |  12435 | 4,103.55    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Germany                  |  Amarilla   |  Medium       |       1350 | 4,72,500.00  | 351000 | 97,875.00   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Canada                   |  Amarilla   |  Medium       |        552 | 1,93,200.00  | 143520 | 40,020.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Canada                   |  Amarilla   |  Medium       |       1228 | 4,29,800.00  | 319280 | 89,030.00   | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Germany                  |  Amarilla   |  Medium       |       1250 | 3,75,000.00  | 312500 | 43,750.00   | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | France                   |  Paseo      |  Medium       |       3801 | 57,015.00    |  38010 | 15,584.10   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | United States of America |  Carretera  |  Medium       |     1117.5 | 22,350.00    |  11175 | 9,834.00    | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | Canada                   |  Carretera  |  Medium       |       2844 | 42,660.00    |  28440 | 11,660.40   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Mexico                   |  Carretera  |  Medium       |        562 | 6,744.00     |   1686 | 4,653.36    | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | Canada                   |  Carretera  |  Medium       |       2299 | 27,588.00    |   6897 | 19,035.72   | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | United States of America |  Carretera  |  Medium       |       2030 | 30,450.00    |  20300 | 8,323.00    | 01-11-2014 |           11 |  November   | 2014 |
| Government       | United States of America |  Carretera  |  Medium       |        263 | 1,841.00     |   1315 | 415.54      | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | Germany                  |  Carretera  |  Medium       |        887 | 1,10,875.00  | 106440 | -2,217.50   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Mexico                   |  Montana    |  Medium       |        980 | 3,43,000.00  | 254800 | 67,620.00   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  Montana    |  Medium       |       1460 | 5,11,000.00  | 379600 | 1,00,740.00 | 01-05-2014 |            5 |  May        | 2014 |
| Government       | France                   |  Montana    |  Medium       |       1403 | 9,821.00     |   7015 | 2,216.74    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | United States of America |  Montana    |  Medium       |       2723 | 32,676.00    |   8169 | 22,546.44   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Paseo      |  Medium       |       1496 | 5,23,600.00  | 388960 | 1,03,224.00 | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Canada                   |  Paseo      |  Medium       |       2299 | 27,588.00    |   6897 | 19,035.72   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | United States of America |  Paseo      |  Medium       |        727 | 2,54,450.00  | 189020 | 50,163.00   | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | Canada                   |  Velo       |  Medium       |        952 | 1,19,000.00  | 114240 | -2,380.00   | 01-02-2014 |            2 |  February   | 2014 |
| Enterprise       | United States of America |  Velo       |  Medium       |       2755 | 3,44,375.00  | 330600 | -6,887.50   | 01-02-2014 |            2 |  February   | 2014 |
| Midmarket        | Germany                  |  Velo       |  Medium       |       1530 | 22,950.00    |  15300 | 6,273.00    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | France                   |  Velo       |  Medium       |       1496 | 5,23,600.00  | 388960 | 1,03,224.00 | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Mexico                   |  Velo       |  Medium       |       1498 | 10,486.00    |   7490 | 2,366.84    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | France                   |  Velo       |  Medium       |       1221 | 3,66,300.00  | 305250 | 39,072.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Velo       |  Medium       |       2076 | 7,26,600.00  | 539760 | 1,43,244.00 | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Canada                   |  VTT        |  Medium       |       2844 | 42,660.00    |  28440 | 11,660.40   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Mexico                   |  VTT        |  Medium       |       1498 | 10,486.00    |   7490 | 2,366.84    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | France                   |  VTT        |  Medium       |       1221 | 3,66,300.00  | 305250 | 39,072.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Mexico                   |  VTT        |  Medium       |       1123 | 22,460.00    |  11230 | 9,882.40    | 01-11-2013 |           11 |  November   | 2013 |
| Small Business   | Canada                   |  VTT        |  Medium       |       2436 | 7,30,800.00  | 609000 | 77,952.00   | 01-12-2013 |           12 |  December   | 2013 |
| Enterprise       | France                   |  Amarilla   |  Medium       |     1987.5 | 2,48,437.50  | 238500 | -4,968.75   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Mexico                   |  Amarilla   |  Medium       |       1679 | 5,87,650.00  | 436540 | 1,15,851.00 | 01-09-2014 |            9 |  September  | 2014 |
| Government       | United States of America |  Amarilla   |  Medium       |        727 | 2,54,450.00  | 189020 | 50,163.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Amarilla   |  Medium       |       1403 | 9,821.00     |   7015 | 2,216.74    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Amarilla   |  Medium       |       2076 | 7,26,600.00  | 539760 | 1,43,244.00 | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Montana    |  Medium       |       1757 | 35,140.00    |  17570 | 15,461.60   | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | United States of America |  Paseo      |  Medium       |       2198 | 32,970.00    |  21980 | 9,011.80    | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | Germany                  |  Paseo      |  Medium       |       1743 | 26,145.00    |  17430 | 7,146.30    | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | United States of America |  Paseo      |  Medium       |       1153 | 17,295.00    |  11530 | 4,727.30    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  Paseo      |  Medium       |       1757 | 35,140.00    |  17570 | 15,461.60   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Velo       |  Medium       |       1001 | 20,020.00    |  10010 | 8,808.80    | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Mexico                   |  Velo       |  Medium       |       1333 | 9,331.00     |   6665 | 2,106.14    | 01-11-2014 |           11 |  November   | 2014 |
| Midmarket        | United States of America |  VTT        |  Medium       |       1153 | 17,295.00    |  11530 | 4,727.30    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Mexico                   |  Carretera  |  Medium       |        727 | 8,724.00     |   2181 | 5,932.32    | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Canada                   |  Carretera  |  Medium       |       1884 | 22,608.00    |   5652 | 15,373.44   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Mexico                   |  Carretera  |  Medium       |       1834 | 36,680.00    |  18340 | 15,772.40   | 01-09-2013 |            9 |  September  | 2013 |
| Channel Partners | Mexico                   |  Montana    |  Medium       |       2340 | 28,080.00    |   7020 | 19,094.40   | 01-01-2014 |            1 |  January    | 2014 |
| Channel Partners | France                   |  Montana    |  Medium       |       2342 | 28,104.00    |   7026 | 19,110.72   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Paseo      |  Medium       |       1031 | 7,217.00     |   5155 | 1,556.81    | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | Canada                   |  Velo       |  Medium       |       1262 | 18,930.00    |  12620 | 4,984.90    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Canada                   |  Velo       |  Medium       |       1135 | 7,945.00     |   5675 | 1,713.85    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Velo       |  Medium       |        547 | 3,829.00     |   2735 | 825.97      | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Canada                   |  Velo       |  Medium       |       1582 | 11,074.00    |   7910 | 2,388.82    | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | France                   |  VTT        |  Medium       |     1738.5 | 20,862.00    |   5216 | 14,186.16   | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | Germany                  |  VTT        |  Medium       |       2215 | 26,580.00    |   6645 | 18,074.40   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Canada                   |  VTT        |  Medium       |       1582 | 11,074.00    |   7910 | 2,388.82    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  Amarilla   |  Medium       |       1135 | 7,945.00     |   5675 | 1,713.85    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Carretera  |  Medium       |       1761 | 6,16,350.00  | 457860 | 1,15,345.50 | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | France                   |  Carretera  |  Medium       |        448 | 1,34,400.00  | 112000 | 12,992.00   | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | France                   |  Carretera  |  Medium       |       2181 | 6,54,300.00  | 545250 | 63,249.00   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  Montana    |  Medium       |       1976 | 39,520.00    |  19760 | 16,993.60   | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | France                   |  Montana    |  Medium       |       2181 | 6,54,300.00  | 545250 | 63,249.00   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Germany                  |  Montana    |  Medium       |       2500 | 3,12,500.00  | 300000 | -9,375.00   | 01-11-2013 |           11 |  November   | 2013 |
| Small Business   | Canada                   |  Paseo      |  Medium       |       1702 | 5,10,600.00  | 425500 | 49,358.00   | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | France                   |  Paseo      |  Medium       |        448 | 1,34,400.00  | 112000 | 12,992.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Germany                  |  Paseo      |  Medium       |       3513 | 4,39,125.00  | 421560 | -13,173.75  | 01-07-2014 |            7 |  July       | 2014 |
| Midmarket        | France                   |  Paseo      |  Medium       |       2101 | 31,515.00    |  21010 | 8,298.95    | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | United States of America |  Paseo      |  Medium       |       2931 | 43,965.00    |  29310 | 11,577.45   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | France                   |  Paseo      |  Medium       |       1535 | 30,700.00    |  15350 | 13,201.00   | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | Germany                  |  Paseo      |  Medium       |       1123 | 3,36,900.00  | 280750 | 32,567.00   | 01-09-2013 |            9 |  September  | 2013 |
| Small Business   | Canada                   |  Paseo      |  Medium       |       1404 | 4,21,200.00  | 351000 | 40,716.00   | 01-11-2013 |           11 |  November   | 2013 |
| Channel Partners | Mexico                   |  Paseo      |  Medium       |       2763 | 33,156.00    |   8289 | 22,546.08   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Germany                  |  Paseo      |  Medium       |       2125 | 14,875.00    |  10625 | 3,208.75    | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | France                   |  Velo       |  Medium       |       1659 | 4,97,700.00  | 414750 | 48,111.00   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Mexico                   |  Velo       |  Medium       |        609 | 12,180.00    |   6090 | 5,237.40    | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | Germany                  |  Velo       |  Medium       |       2087 | 2,60,875.00  | 250440 | -7,826.25   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | France                   |  Velo       |  Medium       |       1976 | 39,520.00    |  19760 | 16,993.60   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | United States of America |  Velo       |  Medium       |       1421 | 28,420.00    |  14210 | 12,220.60   | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | United States of America |  Velo       |  Medium       |       1372 | 4,11,600.00  | 343000 | 39,788.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Germany                  |  Velo       |  Medium       |        588 | 11,760.00    |   5880 | 5,056.80    | 01-12-2013 |           12 |  December   | 2013 |
| Channel Partners | Canada                   |  VTT        |  Medium       |     3244.5 | 38,934.00    |   9734 | 26,475.12   | 01-01-2014 |            1 |  January    | 2014 |
| Small Business   | France                   |  VTT        |  Medium       |        959 | 2,87,700.00  | 239750 | 27,811.00   | 01-02-2014 |            2 |  February   | 2014 |
| Small Business   | Mexico                   |  VTT        |  Medium       |       2747 | 8,24,100.00  | 686750 | 79,663.00   | 01-02-2014 |            2 |  February   | 2014 |
| Enterprise       | Canada                   |  Amarilla   |  Medium       |       1645 | 2,05,625.00  | 197400 | -6,168.75   | 01-05-2014 |            5 |  May        | 2014 |
| Government       | France                   |  Amarilla   |  Medium       |       2876 | 10,06,600.00 | 747760 | 1,88,378.00 | 01-09-2014 |            9 |  September  | 2014 |
| Enterprise       | Germany                  |  Amarilla   |  Medium       |        994 | 1,24,250.00  | 119280 | -3,727.50   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Canada                   |  Amarilla   |  Medium       |       1118 | 22,360.00    |  11180 | 9,614.80    | 01-11-2014 |           11 |  November   | 2014 |
| Small Business   | United States of America |  Amarilla   |  Medium       |       1372 | 4,11,600.00  | 343000 | 39,788.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  Montana    |  Medium       |        488 | 3,416.00     |   2440 | 702.72      | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  Montana    |  Medium       |       1282 | 25,640.00    |  12820 | 10,768.80   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Canada                   |  Paseo      |  Medium       |        257 | 1,799.00     |   1285 | 370.08      | 01-05-2014 |            5 |  May        | 2014 |
| Government       | United States of America |  Amarilla   |  Medium       |       1282 | 25,640.00    |  12820 | 10,768.80   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Mexico                   |  Carretera  |  Medium       |       1540 | 1,92,500.00  | 184800 | -7,700.00   | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | France                   |  Carretera  |  Medium       |        490 | 7,350.00     |   4900 | 1,862.00    | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Mexico                   |  Carretera  |  Medium       |       1362 | 4,76,700.00  | 354120 | 84,444.00   | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | France                   |  Montana    |  Medium       |       2501 | 37,515.00    |  25010 | 9,503.80    | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Canada                   |  Montana    |  Medium       |        708 | 14,160.00    |   7080 | 5,947.20    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Montana    |  Medium       |        645 | 12,900.00    |   6450 | 5,418.00    | 01-07-2014 |            7 |  July       | 2014 |
| Small Business   | France                   |  Montana    |  Medium       |       1562 | 4,68,600.00  | 390500 | 40,612.00   | 01-08-2014 |            8 |  August     | 2014 |
| Small Business   | Canada                   |  Montana    |  Medium       |       1283 | 3,84,900.00  | 320750 | 33,358.00   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | Germany                  |  Montana    |  Medium       |        711 | 10,665.00    |   7110 | 2,701.80    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Mexico                   |  Paseo      |  Medium       |       1114 | 1,39,250.00  | 133680 | -5,570.00   | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       1259 | 8,813.00     |   6295 | 1,812.96    | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       1095 | 7,665.00     |   5475 | 1,576.80    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       1366 | 27,320.00    |  13660 | 11,474.40   | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Mexico                   |  Paseo      |  Medium       |       2460 | 7,38,000.00  | 615000 | 63,960.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Paseo      |  Medium       |        678 | 4,746.00     |   3390 | 976.32      | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       1598 | 11,186.00    |   7990 | 2,301.12    | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       2409 | 16,863.00    |  12045 | 3,468.96    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Germany                  |  Paseo      |  Medium       |       1934 | 38,680.00    |  19340 | 16,245.60   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Mexico                   |  Paseo      |  Medium       |       2993 | 59,860.00    |  29930 | 25,141.20   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |       2146 | 7,51,100.00  | 557960 | 1,33,052.00 | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  Paseo      |  Medium       |       1946 | 13,622.00    |   9730 | 2,802.24    | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Mexico                   |  Paseo      |  Medium       |       1362 | 4,76,700.00  | 354120 | 84,444.00   | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Canada                   |  Velo       |  Medium       |        598 | 7,176.00     |   1794 | 4,807.92    | 01-03-2014 |            3 |  March      | 2014 |
| Government       | United States of America |  Velo       |  Medium       |       2907 | 20,349.00    |  14535 | 4,186.08    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Velo       |  Medium       |       2338 | 16,366.00    |  11690 | 3,366.72    | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | France                   |  Velo       |  Medium       |        386 | 1,15,800.00  |  96500 | 10,036.00   | 01-11-2013 |           11 |  November   | 2013 |
| Small Business   | Mexico                   |  Velo       |  Medium       |        635 | 1,90,500.00  | 158750 | 16,510.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  VTT        |  Medium       |      574.5 | 2,01,075.00  | 149370 | 35,619.00   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  VTT        |  Medium       |       2338 | 16,366.00    |  11690 | 3,366.72    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | France                   |  VTT        |  Medium       |        381 | 1,33,350.00  |  99060 | 23,622.00   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Germany                  |  VTT        |  Medium       |        422 | 1,47,700.00  | 109720 | 26,164.00   | 01-08-2014 |            8 |  August     | 2014 |
| Small Business   | Canada                   |  VTT        |  Medium       |       2134 | 6,40,200.00  | 533500 | 55,484.00   | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | United States of America |  VTT        |  Medium       |        808 | 2,42,400.00  | 202000 | 21,008.00   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Canada                   |  Amarilla   |  Medium       |        708 | 14,160.00    |   7080 | 5,947.20    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | United States of America |  Amarilla   |  Medium       |       2907 | 20,349.00    |  14535 | 4,186.08    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Amarilla   |  Medium       |       1366 | 27,320.00    |  13660 | 11,474.40   | 01-06-2014 |            6 |  June       | 2014 |
| Small Business   | Mexico                   |  Amarilla   |  Medium       |       2460 | 7,38,000.00  | 615000 | 63,960.00   | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Amarilla   |  Medium       |       1520 | 30,400.00    |  15200 | 12,768.00   | 01-11-2014 |           11 |  November   | 2014 |
| Midmarket        | Germany                  |  Amarilla   |  Medium       |        711 | 10,665.00    |   7110 | 2,701.80    | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Mexico                   |  Amarilla   |  Medium       |       1375 | 16,500.00    |   4125 | 11,055.00   | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Mexico                   |  Amarilla   |  Medium       |        635 | 1,90,500.00  | 158750 | 16,510.00   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  VTT        |  Medium       |      436.5 | 8,730.00     |   4365 | 3,666.60    | 01-07-2014 |            7 |  July       | 2014 |
| Small Business   | Canada                   |  Carretera  |  Medium       |       1094 | 3,28,200.00  | 273500 | 25,162.00   | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Mexico                   |  Carretera  |  Medium       |        367 | 4,404.00     |   1101 | 2,906.64    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Canada                   |  Montana    |  Medium       |     3802.5 | 11,40,750.00 | 950625 | 87,457.50   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | France                   |  Montana    |  Medium       |       1666 | 5,83,100.00  | 433160 | 97,461.00   | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | France                   |  Montana    |  Medium       |        322 | 96,600.00    |  80500 | 7,406.00    | 01-09-2013 |            9 |  September  | 2013 |
| Channel Partners | Canada                   |  Montana    |  Medium       |       2321 | 27,852.00    |   6963 | 18,382.32   | 01-11-2014 |           11 |  November   | 2014 |
| Enterprise       | France                   |  Montana    |  Medium       |       1857 | 2,32,125.00  | 222840 | -11,606.25  | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Canada                   |  Montana    |  Medium       |       1611 | 11,277.00    |   8055 | 2,207.07    | 01-12-2013 |           12 |  December   | 2013 |
| Enterprise       | United States of America |  Montana    |  Medium       |       2797 | 3,49,625.00  | 335640 | -17,481.25  | 01-12-2014 |           12 |  December   | 2014 |
| Small Business   | Germany                  |  Montana    |  Medium       |        334 | 1,00,200.00  |  83500 | 7,682.00    | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Mexico                   |  Paseo      |  Medium       |       2565 | 7,69,500.00  | 641250 | 58,995.00   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Mexico                   |  Paseo      |  Medium       |       2417 | 8,45,950.00  | 628420 | 1,41,394.50 | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | United States of America |  Paseo      |  Medium       |       3675 | 55,125.00    |  36750 | 13,413.75   | 01-04-2014 |            4 |  April      | 2014 |
| Small Business   | Canada                   |  Paseo      |  Medium       |       1094 | 3,28,200.00  | 273500 | 25,162.00   | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | France                   |  Paseo      |  Medium       |       1227 | 18,405.00    |  12270 | 4,478.55    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Mexico                   |  Paseo      |  Medium       |        367 | 4,404.00     |   1101 | 2,906.64    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | France                   |  Paseo      |  Medium       |       1324 | 3,97,200.00  | 331000 | 30,452.00   | 01-11-2014 |           11 |  November   | 2014 |
| Channel Partners | Germany                  |  Paseo      |  Medium       |       1775 | 21,300.00    |   5325 | 14,058.00   | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | United States of America |  Paseo      |  Medium       |       2797 | 3,49,625.00  | 335640 | -17,481.25  | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | Mexico                   |  Velo       |  Medium       |        245 | 3,675.00     |   2450 | 894.25      | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | Canada                   |  Velo       |  Medium       |     3793.5 | 11,38,050.00 | 948375 | 87,250.50   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Germany                  |  Velo       |  Medium       |       1307 | 4,57,450.00  | 339820 | 76,459.50   | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | Canada                   |  Velo       |  Medium       |        567 | 70,875.00    |  68040 | -3,543.75   | 01-09-2014 |            9 |  September  | 2014 |
| Enterprise       | Mexico                   |  Velo       |  Medium       |       2110 | 2,63,750.00  | 253200 | -13,187.50  | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  Velo       |  Medium       |       1269 | 4,44,150.00  | 329940 | 74,236.50   | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | United States of America |  VTT        |  Medium       |       1956 | 23,472.00    |   5868 | 15,491.52   | 01-01-2014 |            1 |  January    | 2014 |
| Small Business   | Germany                  |  VTT        |  Medium       |       2659 | 7,97,700.00  | 664750 | 61,157.00   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  VTT        |  Medium       |     1351.5 | 4,73,025.00  | 351390 | 79,062.75   | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | Germany                  |  VTT        |  Medium       |        880 | 10,560.00    |   2640 | 6,969.60    | 01-05-2014 |            5 |  May        | 2014 |
| Small Business   | United States of America |  VTT        |  Medium       |       1867 | 5,60,100.00  | 466750 | 42,941.00   | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | France                   |  VTT        |  Medium       |       2234 | 26,808.00    |   6702 | 17,693.28   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | France                   |  VTT        |  Medium       |       1227 | 18,405.00    |  12270 | 4,478.55    | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Mexico                   |  VTT        |  Medium       |        877 | 1,09,625.00  | 105240 | -5,481.25   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | United States of America |  Amarilla   |  Medium       |       2071 | 7,24,850.00  | 538460 | 1,21,153.50 | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  Amarilla   |  Medium       |       1269 | 4,44,150.00  | 329940 | 74,236.50   | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Germany                  |  Amarilla   |  Medium       |        970 | 14,550.00    |   9700 | 3,540.50    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  Amarilla   |  Medium       |       1694 | 33,880.00    |  16940 | 13,890.80   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Germany                  |  Carretera  |  Medium       |        663 | 13,260.00    |   6630 | 5,436.60    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Canada                   |  Carretera  |  Medium       |        819 | 5,733.00     |   4095 | 1,122.03    | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | Germany                  |  Carretera  |  Medium       |       1580 | 18,960.00    |   4740 | 12,513.60   | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Mexico                   |  Carretera  |  Medium       |        521 | 3,647.00     |   2605 | 713.77      | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  Paseo      |  Medium       |        973 | 19,460.00    |   9730 | 7,978.60    | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Mexico                   |  Paseo      |  Medium       |       1038 | 20,760.00    |  10380 | 8,511.60    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Germany                  |  Paseo      |  Medium       |        360 | 2,520.00     |   1800 | 493.2       | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | France                   |  Velo       |  Medium       |       1967 | 23,604.00    |   5901 | 15,578.64   | 01-03-2014 |            3 |  March      | 2014 |
| Midmarket        | Mexico                   |  Velo       |  Medium       |       2628 | 39,420.00    |  26280 | 9,592.20    | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Germany                  |  VTT        |  Medium       |        360 | 2,520.00     |   1800 | 493.2       | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  VTT        |  Medium       |       2682 | 53,640.00    |  26820 | 21,992.40   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  VTT        |  Medium       |        521 | 3,647.00     |   2605 | 713.77      | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  Amarilla   |  Medium       |       1038 | 20,760.00    |  10380 | 8,511.60    | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Canada                   |  Amarilla   |  Medium       |     1630.5 | 24,457.50    |  16305 | 5,951.33    | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | France                   |  Amarilla   |  Medium       |        306 | 3,672.00     |    918 | 2,423.52    | 01-12-2013 |           12 |  December   | 2013 |
| Channel Partners | United States of America |  Carretera  |  High         |        386 | 4,632.00     |   1158 | 3,010.80    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | United States of America |  Montana    |  High         |       2328 | 16,296.00    |  11640 | 3,026.40    | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | United States of America |  Paseo      |  High         |        386 | 4,632.00     |   1158 | 3,010.80    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | United States of America |  Carretera  |  High         |     3445.5 | 4,30,687.50  | 413460 | -25,841.25  | 01-04-2014 |            4 |  April      | 2014 |
| Enterprise       | France                   |  Carretera  |  High         |       1482 | 1,85,250.00  | 177840 | -11,115.00  | 01-12-2013 |           12 |  December   | 2013 |
| Government       | United States of America |  Montana    |  High         |       2313 | 8,09,550.00  | 601380 | 1,27,215.00 | 01-05-2014 |            5 |  May        | 2014 |
| Enterprise       | United States of America |  Montana    |  High         |       1804 | 2,25,500.00  | 216480 | -13,530.00  | 01-11-2013 |           11 |  November   | 2013 |
| Midmarket        | France                   |  Montana    |  High         |       2072 | 31,080.00    |  20720 | 7,252.00    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Paseo      |  High         |       1954 | 39,080.00    |  19540 | 15,632.00   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Mexico                   |  Paseo      |  High         |        591 | 1,77,300.00  | 147750 | 11,820.00   | 01-05-2014 |            5 |  May        | 2014 |
| Midmarket        | France                   |  Paseo      |  High         |       2167 | 32,505.00    |  21670 | 7,584.50    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Paseo      |  High         |        241 | 4,820.00     |   2410 | 1,928.00    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Germany                  |  Velo       |  High         |        681 | 10,215.00    |   6810 | 2,383.50    | 01-01-2014 |            1 |  January    | 2014 |
| Midmarket        | Germany                  |  Velo       |  High         |        510 | 7,650.00     |   5100 | 1,785.00    | 01-04-2014 |            4 |  April      | 2014 |
| Midmarket        | United States of America |  Velo       |  High         |        790 | 11,850.00    |   7900 | 2,765.00    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | France                   |  Velo       |  High         |        639 | 2,23,650.00  | 166140 | 35,145.00   | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | United States of America |  Velo       |  High         |       1596 | 1,99,500.00  | 191520 | -11,970.00  | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | United States of America |  Velo       |  High         |       2294 | 6,88,200.00  | 573500 | 45,880.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Velo       |  High         |        241 | 4,820.00     |   2410 | 1,928.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  Velo       |  High         |       2665 | 18,655.00    |  13325 | 3,464.50    | 01-11-2014 |           11 |  November   | 2014 |
| Enterprise       | Canada                   |  Velo       |  High         |       1916 | 2,39,500.00  | 229920 | -14,370.00  | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | France                   |  Velo       |  High         |        853 | 2,55,900.00  | 213250 | 17,060.00   | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Mexico                   |  VTT        |  High         |        341 | 42,625.00    |  40920 | -2,557.50   | 01-05-2014 |            5 |  May        | 2014 |
| Midmarket        | Mexico                   |  VTT        |  High         |        641 | 9,615.00     |   6410 | 2,243.50    | 01-07-2014 |            7 |  July       | 2014 |
| Government       | United States of America |  VTT        |  High         |       2807 | 9,82,450.00  | 729820 | 1,54,385.00 | 01-08-2014 |            8 |  August     | 2014 |
| Small Business   | Mexico                   |  VTT        |  High         |        432 | 1,29,600.00  | 108000 | 8,640.00    | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | United States of America |  VTT        |  High         |       2294 | 6,88,200.00  | 573500 | 45,880.00   | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | France                   |  VTT        |  High         |       2167 | 32,505.00    |  21670 | 7,584.50    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | Canada                   |  VTT        |  High         |       2529 | 3,16,125.00  | 303480 | -18,967.50  | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Germany                  |  VTT        |  High         |       1870 | 6,54,500.00  | 486200 | 1,02,850.00 | 01-12-2013 |           12 |  December   | 2013 |
| Enterprise       | United States of America |  Amarilla   |  High         |        579 | 72,375.00    |  69480 | -4,342.50   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Canada                   |  Amarilla   |  High         |       2240 | 7,84,000.00  | 582400 | 1,23,200.00 | 01-02-2014 |            2 |  February   | 2014 |
| Small Business   | United States of America |  Amarilla   |  High         |       2993 | 8,97,900.00  | 748250 | 59,860.00   | 01-03-2014 |            3 |  March      | 2014 |
| Channel Partners | Canada                   |  Amarilla   |  High         |     3520.5 | 42,246.00    |  10562 | 27,459.90   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Mexico                   |  Amarilla   |  High         |       2039 | 40,780.00    |  20390 | 16,312.00   | 01-05-2014 |            5 |  May        | 2014 |
| Channel Partners | Germany                  |  Amarilla   |  High         |       2574 | 30,888.00    |   7722 | 20,077.20   | 01-08-2014 |            8 |  August     | 2014 |
| Government       | Canada                   |  Amarilla   |  High         |        707 | 2,47,450.00  | 183820 | 38,885.00   | 01-09-2014 |            9 |  September  | 2014 |
| Midmarket        | France                   |  Amarilla   |  High         |       2072 | 31,080.00    |  20720 | 7,252.00    | 01-12-2014 |           12 |  December   | 2014 |
| Small Business   | France                   |  Amarilla   |  High         |        853 | 2,55,900.00  | 213250 | 17,060.00   | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | France                   |  Carretera  |  High         |       1198 | 14,376.00    |   3594 | 9,200.64    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Paseo      |  High         |       2532 | 17,724.00    |  12660 | 3,114.36    | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | France                   |  Paseo      |  High         |       1198 | 14,376.00    |   3594 | 9,200.64    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Canada                   |  Velo       |  High         |        384 | 5,760.00     |   3840 | 1,286.40    | 01-01-2014 |            1 |  January    | 2014 |
| Channel Partners | Germany                  |  Velo       |  High         |        472 | 5,664.00     |   1416 | 3,624.96    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | United States of America |  VTT        |  High         |       1579 | 11,053.00    |   7895 | 1,942.17    | 01-03-2014 |            3 |  March      | 2014 |
| Channel Partners | Mexico                   |  VTT        |  High         |       1005 | 12,060.00    |   3015 | 7,718.40    | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | United States of America |  Amarilla   |  High         |     3199.5 | 47,992.50    |  31995 | 10,718.33   | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | Germany                  |  Amarilla   |  High         |        472 | 5,664.00     |   1416 | 3,624.96    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Canada                   |  Carretera  |  High         |       1937 | 23,244.00    |   5811 | 14,876.16   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Germany                  |  Carretera  |  High         |        792 | 2,77,200.00  | 205920 | 40,788.00   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Germany                  |  Carretera  |  High         |       2811 | 8,43,300.00  | 702750 | 47,787.00   | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | France                   |  Carretera  |  High         |       2441 | 3,05,125.00  | 292920 | -21,358.75  | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Canada                   |  Carretera  |  High         |       1560 | 23,400.00    |  15600 | 5,226.00    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  Carretera  |  High         |       2706 | 18,942.00    |  13530 | 3,328.38    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Germany                  |  Montana    |  High         |        766 | 2,68,100.00  | 199160 | 39,449.00   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Germany                  |  Montana    |  High         |       2992 | 59,840.00    |  29920 | 23,337.60   | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Mexico                   |  Montana    |  High         |       2157 | 32,355.00    |  21570 | 7,225.95    | 01-12-2014 |           12 |  December   | 2014 |
| Small Business   | Canada                   |  Paseo      |  High         |        873 | 2,61,900.00  | 218250 | 14,841.00   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |       1122 | 22,440.00    |  11220 | 8,751.60    | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Canada                   |  Paseo      |  High         |     2104.5 | 7,36,575.00  | 547170 | 1,08,381.75 | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | Canada                   |  Paseo      |  High         |       4026 | 48,312.00    |  12078 | 30,919.68   | 01-07-2014 |            7 |  July       | 2014 |
| Channel Partners | France                   |  Paseo      |  High         |     2425.5 | 29,106.00    |   7277 | 18,627.84   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Canada                   |  Paseo      |  High         |       2394 | 47,880.00    |  23940 | 18,673.20   | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | Mexico                   |  Paseo      |  High         |       1984 | 29,760.00    |  19840 | 6,646.40    | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | France                   |  Paseo      |  High         |       2441 | 3,05,125.00  | 292920 | -21,358.75  | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  Paseo      |  High         |       2992 | 59,840.00    |  29920 | 23,337.60   | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Canada                   |  Paseo      |  High         |       1366 | 4,09,800.00  | 341500 | 23,222.00   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Velo       |  High         |       2805 | 56,100.00    |  28050 | 21,879.00   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | Mexico                   |  Velo       |  High         |        655 | 9,825.00     |   6550 | 2,194.25    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Mexico                   |  Velo       |  High         |        344 | 1,20,400.00  |  89440 | 17,716.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Canada                   |  Velo       |  High         |       1808 | 12,656.00    |   9040 | 2,223.84    | 01-11-2014 |           11 |  November   | 2014 |
| Channel Partners | France                   |  VTT        |  High         |       1734 | 20,808.00    |   5202 | 13,317.12   | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | Mexico                   |  VTT        |  High         |        554 | 69,250.00    |  66480 | -4,847.50   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Canada                   |  VTT        |  High         |       2935 | 58,700.00    |  29350 | 22,893.00   | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | Germany                  |  Amarilla   |  High         |       3165 | 3,95,625.00  | 379800 | -27,693.75  | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Mexico                   |  Amarilla   |  High         |       2629 | 52,580.00    |  26290 | 20,506.20   | 01-01-2014 |            1 |  January    | 2014 |
| Enterprise       | France                   |  Amarilla   |  High         |       1433 | 1,79,125.00  | 171960 | -12,538.75  | 01-05-2014 |            5 |  May        | 2014 |
| Enterprise       | Mexico                   |  Amarilla   |  High         |        947 | 1,18,375.00  | 113640 | -8,286.25   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Mexico                   |  Amarilla   |  High         |        344 | 1,20,400.00  |  89440 | 17,716.00   | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Mexico                   |  Amarilla   |  High         |       2157 | 32,355.00    |  21570 | 7,225.95    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  Paseo      |  High         |        380 | 2,660.00     |   1900 | 467.4       | 01-09-2013 |            9 |  September  | 2013 |
| Government       | Mexico                   |  Carretera  |  High         |        886 | 3,10,100.00  | 230360 | 42,528.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Canada                   |  Carretera  |  High         |       2416 | 3,02,000.00  | 289920 | -24,160.00  | 01-09-2013 |            9 |  September  | 2013 |
| Enterprise       | Mexico                   |  Carretera  |  High         |       2156 | 2,69,500.00  | 258720 | -21,560.00  | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Canada                   |  Carretera  |  High         |       2689 | 40,335.00    |  26890 | 8,604.80    | 01-11-2014 |           11 |  November   | 2014 |
| Midmarket        | United States of America |  Montana    |  High         |        677 | 10,155.00    |   6770 | 2,166.40    | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | France                   |  Montana    |  High         |       1773 | 5,31,900.00  | 443250 | 24,822.00   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Mexico                   |  Montana    |  High         |       2420 | 16,940.00    |  12100 | 2,807.20    | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Canada                   |  Montana    |  High         |       2734 | 19,138.00    |  13670 | 3,171.44    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Montana    |  High         |       1715 | 34,300.00    |  17150 | 13,034.00   | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | France                   |  Montana    |  High         |       1186 | 3,55,800.00  | 296500 | 16,604.00   | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | United States of America |  Paseo      |  High         |       3495 | 10,48,500.00 | 873750 | 48,930.00   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |        886 | 3,10,100.00  | 230360 | 42,528.00   | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Mexico                   |  Paseo      |  High         |       2156 | 2,69,500.00  | 258720 | -21,560.00  | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |        905 | 18,100.00    |   9050 | 6,878.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |       1715 | 34,300.00    |  17150 | 13,034.00   | 01-10-2013 |           10 |  October    | 2013 |
| Government       | France                   |  Paseo      |  High         |       1594 | 5,57,900.00  | 414440 | 76,512.00   | 01-11-2014 |           11 |  November   | 2014 |
| Small Business   | Germany                  |  Paseo      |  High         |       1359 | 4,07,700.00  | 339750 | 19,026.00   | 01-11-2014 |           11 |  November   | 2014 |
| Small Business   | Mexico                   |  Paseo      |  High         |       2150 | 6,45,000.00  | 537500 | 30,100.00   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |       1197 | 4,18,950.00  | 311220 | 57,456.00   | 01-11-2014 |           11 |  November   | 2014 |
| Midmarket        | Mexico                   |  Paseo      |  High         |        380 | 5,700.00     |   3800 | 1,216.00    | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Mexico                   |  Paseo      |  High         |       1233 | 24,660.00    |  12330 | 9,370.80    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  Velo       |  High         |       1395 | 4,88,250.00  | 362700 | 66,960.00   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | United States of America |  Velo       |  High         |        986 | 3,45,100.00  | 256360 | 47,328.00   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Velo       |  High         |        905 | 18,100.00    |   9050 | 6,878.00    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Canada                   |  VTT        |  High         |       2109 | 25,308.00    |   6327 | 15,944.04   | 01-05-2014 |            5 |  May        | 2014 |
| Midmarket        | France                   |  VTT        |  High         |     3874.5 | 58,117.50    |  38745 | 12,398.40   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Canada                   |  VTT        |  High         |        623 | 2,18,050.00  | 161980 | 29,904.00   | 01-09-2013 |            9 |  September  | 2013 |
| Government       | United States of America |  VTT        |  High         |        986 | 3,45,100.00  | 256360 | 47,328.00   | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | United States of America |  VTT        |  High         |       2387 | 2,98,375.00  | 286440 | -23,870.00  | 01-11-2014 |           11 |  November   | 2014 |
| Government       | Mexico                   |  VTT        |  High         |       1233 | 24,660.00    |  12330 | 9,370.80    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | United States of America |  Amarilla   |  High         |        270 | 94,500.00    |  70200 | 12,960.00   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | France                   |  Amarilla   |  High         |     3421.5 | 23,950.50    |  17108 | 3,968.94    | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Canada                   |  Amarilla   |  High         |       2734 | 19,138.00    |  13670 | 3,171.44    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | United States of America |  Amarilla   |  High         |       2548 | 38,220.00    |  25480 | 8,153.60    | 01-11-2013 |           11 |  November   | 2013 |
| Government       | France                   |  Carretera  |  High         |     2521.5 | 50,430.00    |  25215 | 19,163.40   | 01-01-2014 |            1 |  January    | 2014 |
| Channel Partners | Mexico                   |  Montana    |  High         |       2661 | 31,932.00    |   7983 | 20,117.16   | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Germany                  |  Paseo      |  High         |       1531 | 30,620.00    |  15310 | 11,635.60   | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  VTT        |  High         |       1491 | 10,437.00    |   7455 | 1,729.56    | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Germany                  |  VTT        |  High         |       1531 | 30,620.00    |  15310 | 11,635.60   | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Canada                   |  Amarilla   |  High         |       2761 | 33,132.00    |   8283 | 20,873.16   | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | United States of America |  Carretera  |  High         |       2567 | 38,505.00    |  25670 | 7,829.35    | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | United States of America |  VTT        |  High         |       2567 | 38,505.00    |  25670 | 7,829.35    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Canada                   |  Carretera  |  High         |        923 | 3,23,050.00  | 239980 | 41,073.50   | 01-03-2014 |            3 |  March      | 2014 |
| Government       | France                   |  Carretera  |  High         |       1790 | 6,26,500.00  | 465400 | 79,655.00   | 01-03-2014 |            3 |  March      | 2014 |
| Government       | Germany                  |  Carretera  |  High         |        442 | 8,840.00     |   4420 | 3,270.80    | 01-09-2013 |            9 |  September  | 2013 |
| Government       | United States of America |  Montana    |  High         |      982.5 | 3,43,875.00  | 255450 | 43,721.25   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | United States of America |  Montana    |  High         |       1298 | 9,086.00     |   6490 | 1,414.82    | 01-02-2014 |            2 |  February   | 2014 |
| Channel Partners | Mexico                   |  Montana    |  High         |        604 | 7,248.00     |   1812 | 4,493.76    | 01-06-2014 |            6 |  June       | 2014 |
| Government       | Mexico                   |  Montana    |  High         |       2255 | 45,100.00    |  22550 | 16,687.00   | 01-07-2014 |            7 |  July       | 2014 |
| Government       | Canada                   |  Montana    |  High         |       1249 | 24,980.00    |  12490 | 9,242.60    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | United States of America |  Paseo      |  High         |     1438.5 | 10,069.50    |   7193 | 1,567.97    | 01-01-2014 |            1 |  January    | 2014 |
| Small Business   | Germany                  |  Paseo      |  High         |        807 | 2,42,100.00  | 201750 | 8,877.00    | 01-01-2014 |            1 |  January    | 2014 |
| Government       | United States of America |  Paseo      |  High         |       2641 | 52,820.00    |  26410 | 19,543.40   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Germany                  |  Paseo      |  High         |       2708 | 54,160.00    |  27080 | 20,039.20   | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Canada                   |  Paseo      |  High         |       2632 | 9,21,200.00  | 684320 | 1,17,124.00 | 01-06-2014 |            6 |  June       | 2014 |
| Enterprise       | Canada                   |  Paseo      |  High         |       1583 | 1,97,875.00  | 189960 | -17,808.75  | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Mexico                   |  Paseo      |  High         |        571 | 6,852.00     |   1713 | 4,248.24    | 01-07-2014 |            7 |  July       | 2014 |
| Government       | France                   |  Paseo      |  High         |       2696 | 18,872.00    |  13480 | 2,938.64    | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | Canada                   |  Paseo      |  High         |       1565 | 23,475.00    |  15650 | 4,773.25    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Canada                   |  Paseo      |  High         |       1249 | 24,980.00    |  12490 | 9,242.60    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  Paseo      |  High         |        357 | 1,24,950.00  |  92820 | 15,886.50   | 01-11-2014 |           11 |  November   | 2014 |
| Channel Partners | Germany                  |  Paseo      |  High         |       1013 | 12,156.00    |   3039 | 7,536.72    | 01-12-2014 |           12 |  December   | 2014 |
| Midmarket        | France                   |  Velo       |  High         |     3997.5 | 59,962.50    |  39975 | 12,192.38   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Canada                   |  Velo       |  High         |       2632 | 9,21,200.00  | 684320 | 1,17,124.00 | 01-06-2014 |            6 |  June       | 2014 |
| Government       | France                   |  Velo       |  High         |       1190 | 8,330.00     |   5950 | 1,297.10    | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Mexico                   |  Velo       |  High         |        604 | 7,248.00     |   1812 | 4,493.76    | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Germany                  |  Velo       |  High         |        660 | 9,900.00     |   6600 | 2,013.00    | 01-09-2013 |            9 |  September  | 2013 |
| Channel Partners | Mexico                   |  Velo       |  High         |        410 | 4,920.00     |   1230 | 3,050.40    | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | Mexico                   |  Velo       |  High         |       2605 | 7,81,500.00  | 651250 | 28,655.00   | 01-11-2013 |           11 |  November   | 2013 |
| Channel Partners | Germany                  |  Velo       |  High         |       1013 | 12,156.00    |   3039 | 7,536.72    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Canada                   |  VTT        |  High         |       1583 | 1,97,875.00  | 189960 | -17,808.75  | 01-06-2014 |            6 |  June       | 2014 |
| Midmarket        | Canada                   |  VTT        |  High         |       1565 | 23,475.00    |  15650 | 4,773.25    | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Canada                   |  Amarilla   |  High         |       1659 | 2,07,375.00  | 199080 | -18,663.75  | 01-01-2014 |            1 |  January    | 2014 |
| Government       | France                   |  Amarilla   |  High         |       1190 | 8,330.00     |   5950 | 1,297.10    | 01-06-2014 |            6 |  June       | 2014 |
| Channel Partners | Mexico                   |  Amarilla   |  High         |        410 | 4,920.00     |   1230 | 3,050.40    | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | Germany                  |  Amarilla   |  High         |       1770 | 21,240.00    |   5310 | 13,168.80   | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Mexico                   |  Carretera  |  High         |       2579 | 51,580.00    |  25790 | 18,568.80   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | United States of America |  Carretera  |  High         |       1743 | 34,860.00    |  17430 | 12,549.60   | 01-05-2014 |            5 |  May        | 2014 |
| Government       | United States of America |  Carretera  |  High         |       2996 | 20,972.00    |  14980 | 3,055.92    | 01-10-2013 |           10 |  October    | 2013 |
| Government       | Germany                  |  Carretera  |  High         |        280 | 1,960.00     |   1400 | 285.6       | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Montana    |  High         |        293 | 2,051.00     |   1465 | 298.86      | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  Montana    |  High         |       2996 | 20,972.00    |  14980 | 3,055.92    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Germany                  |  Paseo      |  High         |        278 | 4,170.00     |   2780 | 806.2       | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Canada                   |  Paseo      |  High         |       2428 | 48,560.00    |  24280 | 17,481.60   | 01-03-2014 |            3 |  March      | 2014 |
| Midmarket        | United States of America |  Paseo      |  High         |       1767 | 26,505.00    |  17670 | 5,124.30    | 01-09-2014 |            9 |  September  | 2014 |
| Channel Partners | France                   |  Paseo      |  High         |       1393 | 16,716.00    |   4179 | 10,196.76   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  VTT        |  High         |        280 | 1,960.00     |   1400 | 285.6       | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | France                   |  Amarilla   |  High         |       1393 | 16,716.00    |   4179 | 10,196.76   | 01-10-2014 |           10 |  October    | 2014 |
| Channel Partners | United States of America |  Amarilla   |  High         |       2015 | 24,180.00    |   6045 | 14,749.80   | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Mexico                   |  Carretera  |  High         |        801 | 2,40,300.00  | 200250 | 6,408.00    | 01-07-2014 |            7 |  July       | 2014 |
| Enterprise       | France                   |  Carretera  |  High         |       1023 | 1,27,875.00  | 122760 | -12,787.50  | 01-09-2013 |            9 |  September  | 2013 |
| Small Business   | Canada                   |  Carretera  |  High         |       1496 | 4,48,800.00  | 374000 | 11,968.00   | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | United States of America |  Carretera  |  High         |       1010 | 3,03,000.00  | 252500 | 8,080.00    | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Germany                  |  Carretera  |  High         |       1513 | 22,695.00    |  15130 | 4,387.70    | 01-11-2014 |           11 |  November   | 2014 |
| Midmarket        | Canada                   |  Carretera  |  High         |       2300 | 34,500.00    |  23000 | 6,670.00    | 01-12-2014 |           12 |  December   | 2014 |
| Enterprise       | Mexico                   |  Carretera  |  High         |       2821 | 3,52,625.00  | 338520 | -35,262.50  | 01-12-2013 |           12 |  December   | 2013 |
| Government       | Canada                   |  Montana    |  High         |     2227.5 | 7,79,625.00  | 579150 | 91,327.50   | 01-01-2014 |            1 |  January    | 2014 |
| Government       | Germany                  |  Montana    |  High         |       1199 | 4,19,650.00  | 311740 | 49,159.00   | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Canada                   |  Montana    |  High         |        200 | 70,000.00    |  52000 | 8,200.00    | 01-05-2014 |            5 |  May        | 2014 |
| Government       | Canada                   |  Montana    |  High         |        388 | 2,716.00     |   1940 | 395.76      | 01-09-2014 |            9 |  September  | 2014 |
| Government       | Mexico                   |  Montana    |  High         |       1727 | 12,089.00    |   8635 | 1,761.54    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Canada                   |  Montana    |  High         |       2300 | 34,500.00    |  23000 | 6,670.00    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |        260 | 5,200.00     |   2600 | 1,872.00    | 01-02-2014 |            2 |  February   | 2014 |
| Midmarket        | Canada                   |  Paseo      |  High         |       2470 | 37,050.00    |  24700 | 7,163.00    | 01-09-2013 |            9 |  September  | 2013 |
| Midmarket        | Canada                   |  Paseo      |  High         |       1743 | 26,145.00    |  17430 | 5,054.70    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | United States of America |  Paseo      |  High         |       2914 | 34,968.00    |   8742 | 21,330.48   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  Paseo      |  High         |       1731 | 12,117.00    |   8655 | 1,765.62    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Canada                   |  Paseo      |  High         |        700 | 2,45,000.00  | 182000 | 28,700.00   | 01-11-2014 |           11 |  November   | 2014 |
| Channel Partners | Canada                   |  Paseo      |  High         |       2222 | 26,664.00    |   6666 | 16,265.04   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | United States of America |  Paseo      |  High         |       1177 | 4,11,950.00  | 306020 | 48,257.00   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  Paseo      |  High         |       1922 | 6,72,700.00  | 499720 | 78,802.00   | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | Mexico                   |  Velo       |  High         |       1575 | 1,96,875.00  | 189000 | -19,687.50  | 01-02-2014 |            2 |  February   | 2014 |
| Government       | United States of America |  Velo       |  High         |        606 | 12,120.00    |   6060 | 4,363.20    | 01-04-2014 |            4 |  April      | 2014 |
| Small Business   | United States of America |  Velo       |  High         |       2460 | 7,38,000.00  | 615000 | 19,680.00   | 01-07-2014 |            7 |  July       | 2014 |
| Small Business   | Canada                   |  Velo       |  High         |        269 | 80,700.00    |  67250 | 2,152.00    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Germany                  |  Velo       |  High         |       2536 | 7,60,800.00  | 634000 | 20,288.00   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  VTT        |  High         |       2903 | 20,321.00    |  14515 | 2,961.06    | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | United States of America |  VTT        |  High         |       2541 | 7,62,300.00  | 635250 | 20,328.00   | 01-08-2014 |            8 |  August     | 2014 |
| Small Business   | Canada                   |  VTT        |  High         |        269 | 80,700.00    |  67250 | 2,152.00    | 01-10-2013 |           10 |  October    | 2013 |
| Small Business   | Canada                   |  VTT        |  High         |       1496 | 4,48,800.00  | 374000 | 11,968.00   | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | United States of America |  VTT        |  High         |       1010 | 3,03,000.00  | 252500 | 8,080.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  VTT        |  High         |       1281 | 4,48,350.00  | 333060 | 52,521.00   | 01-12-2013 |           12 |  December   | 2013 |
| Small Business   | Canada                   |  Amarilla   |  High         |        888 | 2,66,400.00  | 222000 | 7,104.00    | 01-03-2014 |            3 |  March      | 2014 |
| Enterprise       | United States of America |  Amarilla   |  High         |       2844 | 3,55,500.00  | 341280 | -35,550.00  | 01-05-2014 |            5 |  May        | 2014 |
| Channel Partners | France                   |  Amarilla   |  High         |       2475 | 29,700.00    |   7425 | 18,117.00   | 01-08-2014 |            8 |  August     | 2014 |
| Midmarket        | Canada                   |  Amarilla   |  High         |       1743 | 26,145.00    |  17430 | 5,054.70    | 01-10-2013 |           10 |  October    | 2013 |
| Channel Partners | United States of America |  Amarilla   |  High         |       2914 | 34,968.00    |   8742 | 21,330.48   | 01-10-2014 |           10 |  October    | 2014 |
| Government       | France                   |  Amarilla   |  High         |       1731 | 12,117.00    |   8655 | 1,765.62    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Amarilla   |  High         |       1727 | 12,089.00    |   8635 | 1,761.54    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Mexico                   |  Amarilla   |  High         |       1870 | 28,050.00    |  18700 | 5,423.00    | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | France                   |  Carretera  |  High         |       1174 | 1,46,750.00  | 140880 | -16,142.50  | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | Germany                  |  Carretera  |  High         |       2767 | 3,45,875.00  | 332040 | -38,046.25  | 01-08-2014 |            8 |  August     | 2014 |
| Enterprise       | Germany                  |  Carretera  |  High         |       1085 | 1,35,625.00  | 130200 | -14,918.75  | 01-10-2014 |           10 |  October    | 2014 |
| Small Business   | Mexico                   |  Montana    |  High         |        546 | 1,63,800.00  | 136500 | 2,730.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Germany                  |  Paseo      |  High         |       1158 | 23,160.00    |  11580 | 8,106.00    | 01-03-2014 |            3 |  March      | 2014 |
| Midmarket        | Canada                   |  Paseo      |  High         |       1614 | 24,210.00    |  16140 | 4,438.50    | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |       2535 | 17,745.00    |  12675 | 2,408.25    | 01-04-2014 |            4 |  April      | 2014 |
| Government       | Mexico                   |  Paseo      |  High         |       2851 | 9,97,850.00  | 741260 | 1,06,912.50 | 01-05-2014 |            5 |  May        | 2014 |
| Midmarket        | Canada                   |  Paseo      |  High         |       2559 | 38,385.00    |  25590 | 7,037.25    | 01-08-2014 |            8 |  August     | 2014 |
| Government       | United States of America |  Paseo      |  High         |        267 | 5,340.00     |   2670 | 1,869.00    | 01-10-2013 |           10 |  October    | 2013 |
| Enterprise       | Germany                  |  Paseo      |  High         |       1085 | 1,35,625.00  | 130200 | -14,918.75  | 01-10-2014 |           10 |  October    | 2014 |
| Midmarket        | Germany                  |  Paseo      |  High         |       1175 | 17,625.00    |  11750 | 3,231.25    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | United States of America |  Paseo      |  High         |       2007 | 7,02,450.00  | 521820 | 75,262.50   | 01-11-2013 |           11 |  November   | 2013 |
| Government       | Mexico                   |  Paseo      |  High         |       2151 | 7,52,850.00  | 559260 | 80,662.50   | 01-11-2013 |           11 |  November   | 2013 |
| Channel Partners | United States of America |  Paseo      |  High         |        914 | 10,968.00    |   2742 | 6,580.80    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | France                   |  Paseo      |  High         |        293 | 5,860.00     |   2930 | 2,051.00    | 01-12-2014 |           12 |  December   | 2014 |
| Channel Partners | Mexico                   |  Velo       |  High         |        500 | 6,000.00     |   1500 | 3,600.00    | 01-03-2014 |            3 |  March      | 2014 |
| Midmarket        | France                   |  Velo       |  High         |       2826 | 42,390.00    |  28260 | 7,771.50    | 01-05-2014 |            5 |  May        | 2014 |
| Enterprise       | France                   |  Velo       |  High         |        663 | 82,875.00    |  79560 | -9,116.25   | 01-09-2014 |            9 |  September  | 2014 |
| Small Business   | United States of America |  Velo       |  High         |       2574 | 7,72,200.00  | 643500 | 12,870.00   | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | United States of America |  Velo       |  High         |       2438 | 3,04,750.00  | 292560 | -33,522.50  | 01-12-2013 |           12 |  December   | 2013 |
| Channel Partners | United States of America |  Velo       |  High         |        914 | 10,968.00    |   2742 | 6,580.80    | 01-12-2014 |           12 |  December   | 2014 |
| Government       | Canada                   |  VTT        |  High         |      865.5 | 17,310.00    |   8655 | 6,058.50    | 01-07-2014 |            7 |  July       | 2014 |
| Midmarket        | Germany                  |  VTT        |  High         |        492 | 7,380.00     |   4920 | 1,353.00    | 01-07-2014 |            7 |  July       | 2014 |
| Government       | United States of America |  VTT        |  High         |        267 | 5,340.00     |   2670 | 1,869.00    | 01-10-2013 |           10 |  October    | 2013 |
| Midmarket        | Germany                  |  VTT        |  High         |       1175 | 17,625.00    |  11750 | 3,231.25    | 01-10-2014 |           10 |  October    | 2014 |
| Enterprise       | Canada                   |  VTT        |  High         |       2954 | 3,69,250.00  | 354480 | -40,617.50  | 01-11-2013 |           11 |  November   | 2013 |
| Enterprise       | Germany                  |  VTT        |  High         |        552 | 69,000.00    |  66240 | -7,590.00   | 01-11-2014 |           11 |  November   | 2014 |
| Government       | France                   |  VTT        |  High         |        293 | 5,860.00     |   2930 | 2,051.00    | 01-12-2014 |           12 |  December   | 2014 |
| Small Business   | France                   |  Amarilla   |  High         |       2475 | 7,42,500.00  | 618750 | 12,375.00   | 01-03-2014 |            3 |  March      | 2014 |
| Small Business   | Mexico                   |  Amarilla   |  High         |        546 | 1,63,800.00  | 136500 | 2,730.00    | 01-10-2014 |           10 |  October    | 2014 |
| Government       | Mexico                   |  Montana    |  High         |       1368 | 9,576.00     |   6840 | 1,299.60    | 01-02-2014 |            2 |  February   | 2014 |
| Government       | Canada                   |  Paseo      |  High         |        723 | 5,061.00     |   3615 | 686.85      | 01-04-2014 |            4 |  April      | 2014 |
| Channel Partners | United States of America |  VTT        |  High         |       1806 | 21,672.00    |   5418 | 13,003.20   | 01-05-2014 |            5 |  May        | 2014 |
+------------------+--------------------------+-------------+---------------+------------+--------------+--------+-------------+------------+--------------+-------------+------+
700 rows in set (0.01 sec)

-------- CHECK TOTAL NO OF ROWS --------
SELECT COUNT(*) FROM FINANCIALS;

+----------+
| COUNT(*) |
+----------+
|      700 |
+----------+
1 row in set (0.00 sec)

-------- What are the unique segments, countries, and products? ------- 
SELECT DISTINCT SEGMENT, COUNTRY , PRODUCT FROM FINANCIALS;

+------------------+--------------------------+-------------+
| SEGMENT          | COUNTRY                  | PRODUCT     |
+------------------+--------------------------+-------------+
| Government       | Canada                   |  Carretera  |
| Government       | Germany                  |  Carretera  |
| Midmarket        | France                   |  Carretera  |
| Midmarket        | Germany                  |  Carretera  |
| Midmarket        | Mexico                   |  Carretera  |
| Midmarket        | Germany                  |  Montana    |
| Channel Partners | Canada                   |  Montana    |
| Government       | France                   |  Montana    |
| Channel Partners | Germany                  |  Montana    |
| Midmarket        | Mexico                   |  Montana    |
| Enterprise       | Canada                   |  Montana    |
| Small Business   | Mexico                   |  Montana    |
| Government       | Germany                  |  Montana    |
| Midmarket        | United States of America |  Montana    |
| Government       | Canada                   |  Paseo      |
| Midmarket        | Mexico                   |  Paseo      |
| Channel Partners | Canada                   |  Paseo      |
| Government       | Germany                  |  Paseo      |
| Channel Partners | Germany                  |  Paseo      |
| Government       | Mexico                   |  Paseo      |
| Midmarket        | France                   |  Paseo      |
| Small Business   | Mexico                   |  Paseo      |
| Government       | United States of America |  Paseo      |
| Channel Partners | United States of America |  Paseo      |
| Midmarket        | Canada                   |  Paseo      |
| Government       | Mexico                   |  Velo       |
| Enterprise       | France                   |  Velo       |
| Channel Partners | Germany                  |  Velo       |
| Government       | Germany                  |  Velo       |
| Enterprise       | United States of America |  Velo       |
| Enterprise       | Canada                   |  Velo       |
| Small Business   | Canada                   |  VTT        |
| Channel Partners | Germany                  |  VTT        |
| Midmarket        | France                   |  VTT        |
| Midmarket        | Germany                  |  VTT        |
| Government       | France                   |  VTT        |
| Small Business   | France                   |  VTT        |
| Government       | Canada                   |  VTT        |
| Government       | France                   |  Amarilla   |
| Channel Partners | United States of America |  Amarilla   |
| Enterprise       | Germany                  |  Amarilla   |
| Government       | Germany                  |  Amarilla   |
| Government       | United States of America |  Amarilla   |
| Midmarket        | United States of America |  Amarilla   |
| Government       | France                   |  Paseo      |
| Government       | France                   |  Velo       |
| Channel Partners | United States of America |  Carretera  |
| Government       | Mexico                   |  Carretera  |
| Government       | United States of America |  Carretera  |
| Channel Partners | Canada                   |  Carretera  |
| Enterprise       | United States of America |  Carretera  |
| Channel Partners | France                   |  Carretera  |
| Channel Partners | Germany                  |  Carretera  |
| Small Business   | Mexico                   |  Carretera  |
| Government       | France                   |  Carretera  |
| Small Business   | United States of America |  Montana    |
| Government       | Canada                   |  Montana    |
| Enterprise       | United States of America |  Montana    |
| Midmarket        | United States of America |  Paseo      |
| Enterprise       | United States of America |  Paseo      |
| Enterprise       | France                   |  Paseo      |
| Enterprise       | Mexico                   |  Paseo      |
| Midmarket        | Germany                  |  Paseo      |
| Small Business   | United States of America |  Paseo      |
| Government       | Canada                   |  Velo       |
| Government       | Germany                  |  VTT        |
| Enterprise       | United States of America |  VTT        |
| Enterprise       | France                   |  VTT        |
| Small Business   | Germany                  |  VTT        |
| Small Business   | Mexico                   |  VTT        |
| Government       | Mexico                   |  VTT        |
| Midmarket        | France                   |  Amarilla   |
| Enterprise       | Canada                   |  Carretera  |
| Small Business   | Germany                  |  Carretera  |
| Channel Partners | United States of America |  Montana    |
| Government       | United States of America |  Montana    |
| Channel Partners | Mexico                   |  Montana    |
| Enterprise       | Mexico                   |  Montana    |
| Small Business   | France                   |  Paseo      |
| Small Business   | Germany                  |  Paseo      |
| Enterprise       | Germany                  |  Paseo      |
| Channel Partners | France                   |  Paseo      |
| Small Business   | Canada                   |  Paseo      |
| Enterprise       | Canada                   |  Paseo      |
| Channel Partners | Mexico                   |  Paseo      |
| Government       | United States of America |  Velo       |
| Enterprise       | Germany                  |  Velo       |
| Enterprise       | Mexico                   |  Velo       |
| Channel Partners | France                   |  Velo       |
| Channel Partners | Mexico                   |  Velo       |
| Enterprise       | Mexico                   |  VTT        |
| Enterprise       | Canada                   |  VTT        |
| Government       | United States of America |  VTT        |
| Small Business   | Germany                  |  Amarilla   |
| Small Business   | Mexico                   |  Amarilla   |
| Small Business   | Canada                   |  Amarilla   |
| Enterprise       | France                   |  Carretera  |
| Channel Partners | France                   |  Montana    |
| Enterprise       | France                   |  Montana    |
| Enterprise       | Germany                  |  Montana    |
| Small Business   | United States of America |  VTT        |
| Channel Partners | Mexico                   |  VTT        |
| Enterprise       | Germany                  |  VTT        |
| Midmarket        | Canada                   |  Montana    |
| Small Business   | Germany                  |  Montana    |
| Channel Partners | United States of America |  Velo       |
| Channel Partners | France                   |  VTT        |
| Midmarket        | Mexico                   |  VTT        |
| Government       | Mexico                   |  Amarilla   |
| Enterprise       | Mexico                   |  Amarilla   |
| Government       | Canada                   |  Amarilla   |
| Channel Partners | Canada                   |  Velo       |
| Channel Partners | Mexico                   |  Amarilla   |
| Small Business   | United States of America |  Carretera  |
| Government       | Mexico                   |  Montana    |
| Midmarket        | United States of America |  Velo       |
| Midmarket        | Mexico                   |  Velo       |
| Small Business   | Germany                  |  Velo       |
| Midmarket        | Canada                   |  Carretera  |
| Channel Partners | Mexico                   |  Carretera  |
| Midmarket        | United States of America |  Carretera  |
| Enterprise       | Germany                  |  Carretera  |
| Midmarket        | Germany                  |  Velo       |
| Small Business   | France                   |  Velo       |
| Midmarket        | Canada                   |  VTT        |
| Enterprise       | France                   |  Amarilla   |
| Midmarket        | United States of America |  VTT        |
| Midmarket        | Canada                   |  Velo       |
| Small Business   | France                   |  Carretera  |
| Small Business   | France                   |  Montana    |
| Small Business   | United States of America |  Velo       |
| Channel Partners | Canada                   |  VTT        |
| Enterprise       | Canada                   |  Amarilla   |
| Small Business   | United States of America |  Amarilla   |
| Enterprise       | Mexico                   |  Carretera  |
| Midmarket        | France                   |  Montana    |
| Small Business   | Canada                   |  Montana    |
| Small Business   | Mexico                   |  Velo       |
| Midmarket        | Germany                  |  Amarilla   |
| Small Business   | Canada                   |  Carretera  |
| Small Business   | Canada                   |  Velo       |
| Channel Partners | United States of America |  VTT        |
| Midmarket        | Canada                   |  Amarilla   |
| Channel Partners | France                   |  Amarilla   |
| Enterprise       | United States of America |  Amarilla   |
| Channel Partners | Canada                   |  Amarilla   |
| Channel Partners | Germany                  |  Amarilla   |
| Small Business   | France                   |  Amarilla   |
| Midmarket        | Mexico                   |  Amarilla   |
| Midmarket        | France                   |  Velo       |
+------------------+--------------------------+-------------+
150 rows in set (0.01 sec)

-------- How many products are sold in each country? -------
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

-------- What is the time range of the dataset? (Min/Max of DATE or YEAR) -------
SELECT MIN(DATE), MAX(DATE) , MIN(YEAR), MAX(YEAR) FROM FINANCIALS;

+------------+------------+-----------+-----------+
| MIN(DATE)  | MAX(DATE)  | MIN(YEAR) | MAX(YEAR) |
+------------+------------+-----------+-----------+
| 01-01-2014 | 01-12-2014 |      2013 |      2014 |
+------------+------------+-----------+-----------+
1 row in set (0.00 sec)

-------- CHECK THE DATASET WITH LIMIT -----
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

Result : Empty set (0.00 sec)

-------------------------------- Sales & Profit Analysis ------------------------------------

-------- What is the total revenue (Gross_Sales), total cost (COGS), and total profit? -------
SELECT SUM(GROSS_SALES) AS TOTAL_REVENUE , SUM(COGS) AS TOTAL_COST , SUM(PROFIT) AS TOTAL_PROFIT FROM FINANCIALS;

+---------------+------------+--------------------+
| TOTAL_REVENUE | TOTAL_COST | TOTAL_PROFIT       |
+---------------+------------+--------------------+
|         12127 |  101832652 | 22088.299999999996 |
+---------------+------------+--------------------+
1 row in set (0.00 sec)

-------------- Which product generated the highest total profit? ---------------------
SELECT DISTINCT PRODUCT, PROFIT FROM FINANCIALS 
ORDER BY PROFIT DESC
LIMIT 1;

+---------+--------------+
| PRODUCT | TOTAL_PROFIT |
+---------+--------------+
|  Paseo  |      6675.25 |
+---------+--------------+
1 row in set (0.00 sec)

-------------- Which country has the highest total sales? --------------------------------
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

-------------- Which segment contributes the most to revenue? ------------------------------
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

-------------- Which discount band is most commonly used? -----------------------------------
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

-------------- What are the monthly sales trends across years? --------------------------------
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

-------------- Which month has the highest average profit? ----------------------------------------
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

-------------- Compare sales by YEAR – are they increasing or decreasing? ------------------------------------------
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

----------------------- Top 5 products by total units sold----------------------------------------
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

----------------------- Which product has the lowest profit margin? ---------------------------------
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

----------------------- Which products are sold across the most countries? ----------------------------------
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

-------------------- What is the average discount given per segment? ---------------------------
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

-------------------- Calculate profit margin for each product (Profit ÷ Gross Sales) ----------------------------
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

-------------------- What’s the profit per unit sold, per product? ------------------------
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


-------------------- Which combination of country & product gives the highest total profit? ---------------------------
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
