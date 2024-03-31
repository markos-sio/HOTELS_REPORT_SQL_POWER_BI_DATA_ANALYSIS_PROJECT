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
  arrival_date_year AS Year, 
  SUM(required_car_parking_spaces) AS Parking_spaces 
FROM 
  h 
GROUP BY 
  arrival_date_year 
ORDER BY 
  arrival_date_year ASC
