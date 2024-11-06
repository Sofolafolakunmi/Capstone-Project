SELECT * FROM [dbo].[SalesData]

SELECT 
    Product, 
    SUM(Total_Sales) AS TotalSalesPriduct 
FROM
    SalesData
GROUP BY 
    Product


SELECT SUM(Total_Sales) AS HAT FROM SalesData
WHERE Product = 'Hat'

SELECT SUM(Total_Sales) AS JACKET FROM SalesData
WHERE Product = 'Jacket'

SELECT SUM(Total_Sales) AS SHIRT FROM SalesData
WHERE Product = 'Shirt'

SELECT SUM(Total_Sales) AS GLOVES FROM SalesData
WHERE Product = 'Gloves'

SELECT SUM(Total_Sales) AS SHOES FROM SalesData
WHERE Product = 'Shoes'

SELECT SUM(Total_Sales) AS SOCKS FROM SalesData
WHERE Product = 'Socks'

SELECT SUM(Total_Sales) AS EAST FROM SalesData
WHERE Region = 'East'

SELECT SUM(Total_Sales) AS NORTH FROM SalesData
WHERE Region = 'North'

SELECT SUM(Total_Sales) AS SOUTH FROM SalesData
WHERE Region = 'South'

SELECT SUM(Total_Sales) AS WEST FROM SalesData
WHERE Region = 'West'


SELECT 
    Region, 
    Count(*) AS NumberOfSales 
FROM
    SalesData
GROUP BY 
    Region


SELECT Top 1
    Product, 
    SUM(Total_Sales) AS TotalSalesPriduct 
FROM
    SalesData
GROUP BY 
    Product
ORDER BY
   TotalSalesPriduct DESC;


SELECT 
    Product, 
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM
    SalesData
GROUP BY 
    Product


SELECT 
    MONTH(OrderDate) AS Month, 
    SUM(Total_Sales) AS MonthlySales
FROM 
     SalesData
WHERE 
    YEAR(OrderDate) = 2024 
GROUP BY 
    MONTH(OrderDate)
ORDER BY 
    Month;


SELECT TOP 5
    Customer_Id,
    SUM(Total_Sales) AS TotalPurchaseAmount
FROM 
   SalesData
GROUP BY 
    Customer_Id
ORDER BY 
    TotalPurchaseAmount DESC;

SELECT 
    Region, 
    SUM(Total_Sales) AS SalesPerRegion,
    (SUM(Total_Sales) * 100.0 / (SELECT SUM(Total_Sales) FROM SalesData)) AS PercentageOfTotalSales
FROM 
    SalesData
GROUP BY 
    Region
ORDER BY 
    PercentageOfTotalSales DESC;


Select 
     Distinct product 
	 FROM SalesData
	 where product Not In(select Product
	 FROM SalesData
	 where OrderDate>=
	 Dateadd(quarter,-1, GetDate()) and 
	OrderDate <Getdate());
