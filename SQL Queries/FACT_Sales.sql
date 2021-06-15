--- Cleaned FACT Internet Sales Table ---
USE AdventureWorksDW2019 
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
where 
  left(OrderDateKey, 4) >= year(getdate()) -2  --- considering only past two years for analysis
order by 
  OrderDateKey
