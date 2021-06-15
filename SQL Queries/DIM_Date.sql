--- Cleaning Dim Date table ----
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  Left([EnglishDayNameOfWeek], 3) AS Day, 
  [WeekNumberOfYear] AS WeekNo, 
  LEFT([EnglishMonthName], 3) AS Month, 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019;