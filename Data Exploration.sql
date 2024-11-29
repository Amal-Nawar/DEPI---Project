
--------motorcycle trends in each country during time----------


SELECT 
    [COUNTRY], 
   [PRODUCTLINE] , 
    SUM([SALES]) AS total_sales
FROM 
    [dbo].[ThunderGlide_Motors]
	WHERE 
    [PRODUCTLINE]= 'Motorcycles'
GROUP BY 
   [COUNTRY], 
    [PRODUCTLINE]
ORDER BY 
   [COUNTRY], 
    total_sales DESC

---------- Motorcycles, Classic Cars, or Trucks and Buses more popular as local preferences -----------
SELECT 
   [CITY] , 
   [PRODUCTLINE] , 
    avg([SALES]) AS avg_sales
FROM 
    [dbo].[ThunderGlide_Motors]
	WHERE 
    [PRODUCTLINE]= 'Trucks and Buses' 
GROUP BY 
  [CITY] , 
    [PRODUCTLINE]
ORDER BY 
  [CITY], 
    avg_sales DESC


SELECT 
   [CITY] , 
   [PRODUCTLINE] , 
    avg([SALES]) AS avg_sales
FROM 
    [dbo].[ThunderGlide_Motors]
	WHERE 
    [PRODUCTLINE]= 'Classic Cars'
GROUP BY 
  [CITY] , 
    [PRODUCTLINE]
ORDER BY 
  [CITY], 
    avg_sales DESC 




SELECT 
   [CITY] , 
   [PRODUCTLINE] , 
    avg ([SALES]) AS avg_sales
FROM 
    [dbo].[ThunderGlide_Motors]
	WHERE 
    [PRODUCTLINE]= 'Motorcycles'
GROUP BY 
  [CITY] , 
    [PRODUCTLINE]
ORDER BY 
  [CITY], 
    avg_sales DESC 



-----------	In which year was the highest sales of motorcycle in each country?-----------
SELECT 
   [COUNTRY] , 
    [YEAR_ID], 
    SUM([SALES]) AS total_sales
FROM 
   [dbo].[ThunderGlide_Motors]
WHERE 
    [PRODUCTLINE]= 'Motorcycles'
GROUP BY 
   [COUNTRY], 
    [YEAR_ID]
ORDER BY 
  [COUNTRY], 
    total_sales DESC

-----------Which motorcycle is often considered the most expensive?---------

SELECT 
  [PRODUCTLINE] ,[PRICE_EACH]
FROM 
    [dbo].[ThunderGlide_Motors]
where 
     [PRODUCTLINE]= 'Motorcycles'
ORDER BY 
    [PRICE_EACH] DESC

---------Which country was the highest consumer of cars? ------

SELECT TOP 1 [COUNTRY] , SUM([SALES]) AS total_sales
FROM [dbo].[ThunderGlide_Motors]
where 
     [PRODUCTLINE]= 'Classic Cars'
GROUP BY [COUNTRY]
ORDER BY total_sales DESC


--------What are the average annual sales.-----

SELECT 
   [YEAR_ID], AVG([SALES]) AS AverageAnnualSales 
FROM [dbo].[ThunderGlide_Motors]
group by [YEAR_ID]

---------For city-level data, consider looking at local transportation departments, industry reports, or specialized research firms.
--Some cities may have unique trends based on commuting patterns, and sales pattern.

SELECT 
    [CITY],[PRODUCTLINE],
    SUM([SALES]) AS TotalAnnualSales
FROM 
    [dbo].[ThunderGlide_Motors]
GROUP BY 
    [CITY] ,[PRODUCTLINE] 
order by [CITY],[PRODUCTLINE] asc