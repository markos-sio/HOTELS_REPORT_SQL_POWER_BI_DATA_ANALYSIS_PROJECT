WITH h AS (
  SELECT 
    * 
  FROM 
    dbo.[2018] 
  UNION 
  SELECT 
    * 
  FROM 
    dbo.[2019] 
  UNION 
  SELECT 
    * 
  FROM 
    dbo.[2020]
) 
SELECT 
  arrival_date_month AS Month, 
  arrival_date_year AS Year, 
  SUM(is_canceled) AS Cancellations 
FROM 
  h 
GROUP BY 
  arrival_date_year, 
  Month_Number, 
  arrival_date_month 
ORDER BY 
  arrival_date_year, 
  Month_Number, 
  arrival_date_month ASC
