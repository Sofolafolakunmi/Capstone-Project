SELECT 
    Region, 
    COUNT(distinct CustomerID) AS TotalCustomers
FROM 
    CustomerData
GROUP BY 
    Region
ORDER BY 
    TotalCustomers DESC;


SELECT TOP 1
    SubscriptionType, 
    COUNT
	(distinct CustomerID)	AS TotalCustomer
FROM 
    CustomerData
GROUP BY 
    SubscriptionType
ORDER BY 
    TotalCustomer DESC;


SELECT 
    CustomerID
FROM 
    CustomerData
WHERE 
   (datediff(month,subscriptionstart,subscriptionend))<=6
   
SELECT 
    AVG(SubscriptionDuration) AS AverageSubscriptionDuration
FROM 
    CustomerData;

SELECT 
    CustomerID
FROM 
    CustomerData
WHERE 
   (datediff(month,subscriptionstart,subscriptionend))>12;


SELECT 
    SubscriptionType, 
    SUM(Revenue) AS TotalRevenue
FROM 
    CustomerData
GROUP BY 
    SubscriptionType
ORDER BY 
    TotalRevenue DESC; 


SELECT TOP 3
    Region, 
    COUNT(*) AS SubscriptionCancellations
FROM 
    CustomerData
WHERE 
    Canceled IS NOT NULL
GROUP BY 
    Region
ORDER BY 
    SubscriptionCancellations DESC;


SELECT
    COUNT(CASE WHEN Canceled = 'FALSE' THEN 1 END) AS TotalActiveSubscriptions,
    COUNT(CASE WHEN Canceled = 'TRUE' THEN 1 END) AS TotalCanceledSubscriptions
FROM 
    CustomerData;
