WITH h AS(
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
  * 
FROM 
  h 
  LEFT JOIN dbo.market_segment AS ms ON h.market_segment = ms.market_segment 
  LEFT JOIN dbo.meal_cost AS mc ON mc.meal = h.meal 
ORDER BY 
  h.arrival_date_year ASC
