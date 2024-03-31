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
  customer_type, 
  COUNT(customer_type) AS Count_Customer_Type, 
  COUNT(customer_type)* 100 /(
    SELECT 
      COUNT(*) 
    FROM 
      h
  ) AS Percentage 
FROM 
  h 
GROUP BY 
  customer_type
