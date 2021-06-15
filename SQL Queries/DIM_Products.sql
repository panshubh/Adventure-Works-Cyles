--- Cleaned DIM Product table ---
USE AdventureWorksDW2019 
SELECT 
  P.[ProductKey], 
  P.[ProductAlternateKey], 
  P.[EnglishProductName] AS ProductName, 
  PC.[EnglishProductCategoryName] AS ProductCategory, 
  PS.[EnglishProductSubcategoryName] AS ProductSubCategory, 
  P.[Color], 
  P.[Size], 
  P.[ProductLine], 
  P.[ModelName], 
  P.[EnglishDescription] AS ProductDiscription, 
  ISnull (P.[Status], 'Outdated') AS ProductStatus --- changing null values in status column to 'outdated'
FROM 
  [DimProduct] AS P 
  left join DimProductSubcategory AS PS ON P.ProductSubcategoryKey = PS.ProductSubcategoryKey 
  left join DimProductCategory AS PC ON PS.ProductCategoryKey = PC.ProductCategoryKey 
ORDER BY 
  P.ProductKey;
