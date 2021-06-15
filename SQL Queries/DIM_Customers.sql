--- Cleaned DIM customer table ---
USE AdventureWorksDW2019 
SELECT 
  C.[CustomerKey], 
  C.[FirstName], 
  C.[LastName], 
  C.[FirstName] + ' ' + C.[LastName] AS FullName, 
  CASE C.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  C.[DateFirstPurchase], 
  G.[City] 
FROM 
  [DimCustomer] AS C 
  left join DimGeography AS G ON C.GeographyKey = G.GeographyKey --- Joined Customer city from Geography table
order by 
  c.[CustomerKey];