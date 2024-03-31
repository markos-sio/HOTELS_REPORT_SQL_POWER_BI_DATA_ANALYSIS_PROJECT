-- Add Month_Abbreviation and Month_Number columns to dbo.[2018]
ALTER TABLE 
  dbo.[2018] 
ADD 
  Month_Abbreviation VARCHAR(3), 
  Month_Number INT;
-- Update dbo.[2018]
UPDATE 
  dbo.[2018] 
SET 
  Month_Abbreviation = LEFT(arrival_date_month, 3), 
  Month_Number = CASE WHEN arrival_date_month = 'January' THEN 1 WHEN arrival_date_month = 'February' THEN 2 WHEN arrival_date_month = 'March' THEN 3 WHEN arrival_date_month = 'April' THEN 4 WHEN arrival_date_month = 'May' THEN 5 WHEN arrival_date_month = 'June' THEN 6 WHEN arrival_date_month = 'July' THEN 7 WHEN arrival_date_month = 'August' THEN 8 WHEN arrival_date_month = 'September' THEN 9 WHEN arrival_date_month = 'October' THEN 10 WHEN arrival_date_month = 'November' THEN 11 WHEN arrival_date_month = 'December' THEN 12 ELSE NULL END;
-- Add Month_Abbreviation and Month_Number columns to dbo.[2019]
ALTER TABLE 
  dbo.[2019] 
ADD 
  Month_Abbreviation VARCHAR(3), 
  Month_Number INT;
-- Update dbo.[2019]
UPDATE 
  dbo.[2019] 
SET 
  Month_Abbreviation = LEFT(arrival_date_month, 3), 
  Month_Number = CASE WHEN arrival_date_month = 'January' THEN 1 WHEN arrival_date_month = 'February' THEN 2 WHEN arrival_date_month = 'March' THEN 3 WHEN arrival_date_month = 'April' THEN 4 WHEN arrival_date_month = 'May' THEN 5 WHEN arrival_date_month = 'June' THEN 6 WHEN arrival_date_month = 'July' THEN 7 WHEN arrival_date_month = 'August' THEN 8 WHEN arrival_date_month = 'September' THEN 9 WHEN arrival_date_month = 'October' THEN 10 WHEN arrival_date_month = 'November' THEN 11 WHEN arrival_date_month = 'December' THEN 12 ELSE NULL END;
-- Add Month_Abbreviation and Month_Number columns to dbo.[2020]
ALTER TABLE 
  dbo.[2020] 
ADD 
  Month_Abbreviation VARCHAR(3), 
  Month_Number INT;
-- Update dbo.[2020]
UPDATE 
  dbo.[2020] 
SET 
  Month_Abbreviation = LEFT(arrival_date_month, 3), 
  Month_Number = CASE WHEN arrival_date_month = 'January' THEN 1 WHEN arrival_date_month = 'February' THEN 2 WHEN arrival_date_month = 'March' THEN 3 WHEN arrival_date_month = 'April' THEN 4 WHEN arrival_date_month = 'May' THEN 5 WHEN arrival_date_month = 'June' THEN 6 WHEN arrival_date_month = 'July' THEN 7 WHEN arrival_date_month = 'August' THEN 8 WHEN arrival_date_month = 'September' THEN 9 WHEN arrival_date_month = 'October' THEN 10 WHEN arrival_date_month = 'November' THEN 11 WHEN arrival_date_month = 'December' THEN 12 ELSE NULL END;
