##### Capstone-Project

### Project Title: Sales Transactions and Customer Subcription Dataset 

### Project Overview For Sales Data 

This dataset captures transactional sales data, providing a detailed view of customer orders, including product, region, and revenue information. It is ideal for analyzing sales trends, and regional performance, enabling insights into the drivers of revenue and high-demand products.

### Project Overview For Customer Subcription Data 

This dataset provides a comprehensive look at customer subscription patterns and revenue, enabling insights into the drivers of pattern and high-demand subscription of different customer.
Column Descriptions

### Column Descriptions For Sales Data
-	OrderID: A unique identifier for each order.
-	CustomerId: A unique identifier for each customer placing an order.
-	Product: The specific product purchased in each transaction.
-	Region: The geographical location (e.g., North, South, East, West) where the order was placed.
-	OrderDate: The date when the order was made.
-	Quantity: The number of units purchased for each product in an order.
-	UnitPrice: The price per unit of the product.
-	Total Sales: The total sales value for the order, calculated as Quantity * UnitPrice

### Column Descriptions For Customer Data

-	CustomerID: Unique identifier for each customer.
-	CustomerName: Name of the customer (anonymized if necessary).
-	Region: Geographical area where the customer is located (e.g., North, South, East, West).
-	SubscriptionType: Type of subscription plan the customer is enrolled in (e.g., Basic, Premium).
-	SubscriptionStart: Start date of the customer's subscription.
-	SubscriptionEnd: End date of the customer's subscription.
-	Canceled: Indicates if the subscription was canceled (TRUE or FALSE).
-	Revenue: Revenue generated from the customer's subscription.
-	Subscription Duration: Duration (in days) of the subscription period

### Data Source:  
The main data sources for this analysis are the "Data Sales.csv" and "Customer.csv" files, which are open-source datasets available for free download from online repositories like Kaggle, FRED, or other similar platforms.

### Tools Used 
-Excel: Employed for data cleaning and visualization.
-SQL: Utilized for data cleaning through queries.
-Power BI: Used for both data cleaning and visualization.

### Data Cleaning and Preparations 
In the intial phase of Data Cleaning and Preparations, we perform the following action;
- Data loading and Inspection
- Handling missing variables
- Data Cleaning and Formatting 

### Exploratory Data Analysis 
EDA involved the exploratory of the Data to answer some questions about the data such as;

# For Sales Data 
1. Retrieve the total sales for each product category.
2. Find the number of sales transactions in each region.
3. Find the highest-selling product by total sales value.
4. Calculate total revenue per product.
5. Calculate monthly sales totals for the current year.
6. Find the top 5 customers by total purchase amount.
7. Calculate the percentage of total sales contributed by each region.
8. Identify products with no sales in the last quarter.

# For Customer Data
1. Retrieve the total number of customers from each region.
2. Find the most popular subscription type by the number of customers.
3. Find customers who canceled their subscription within 6 months.
4. Calculate the average subscription duration for all customers.
5. Find customers with subscriptions longer than 12 months.
6. Calculate total revenue by subscription type.
7. Find the top 3 regions by subscription cancellations.
8. Find the total number of active and canceled subscriptions.
