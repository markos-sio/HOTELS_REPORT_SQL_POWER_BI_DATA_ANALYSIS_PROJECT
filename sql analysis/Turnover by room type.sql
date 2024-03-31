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
  reserved_room_type AS Room_type, 
  ROUND(
    SUM(
      (
        (adr * stays_in_weekend_nights) + (adults + children + babies) * Cost * stays_in_weekend_nights
      ) * (1 - Discount) + (
        (adr * stays_in_week_nights) + (adults + children + babies) * stays_in_week_nights * Cost
      ) * (1 - Discount)
    )/ 1000000, 
    0
  ) AS Turnover -- Dispay turnover in millions
FROM 
  h 
  LEFT JOIN dbo.market_segment AS ms ON h.market_segment = ms.market_segment 
  LEFT JOIN dbo.meal_cost AS mc ON mc.meal = h.meal 
GROUP BY 
  reserved_room_type 
ORDER BY 
  Turnover DESC
