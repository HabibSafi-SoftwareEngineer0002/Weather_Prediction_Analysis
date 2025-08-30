Select * from weather;

--Extract date,Month from given date..
begin;
Select EXTRACT( Day from date ) As Day
from weather;
commit;

ALTER TABLE weather
ADD COLUMN Day int,
ADD COLUMN Month int;

UPDATE weather
SET Day=Extract(day from date),
 Month=Extract(Month from date);
--TempRate..
ALTER TABLE weather
ADD COLUMN temp_Rate decimal(20,2);
UPDATE weather
SET temp_Rate=MaxTemp-MinTemp;
--Windspeed_rate..
SELECT WindSpeed_Rate from weather;

ALTER TABLE weather

ADD COLUMN WindSpeed_Rate decimal(20,2);
UPDATE weather
SET WindSpeed_Rate=WindSpeed3pm-WindSpeed9am;
--Humidity,Pressure,Cloud Rates...
ALTER TABLE weather
ADD COLUMN Humidity_Rate decimal(20,2),
ADD COLUMN Pressure_Rate decimal(20,2),
ADD COLUMN Cloud_Rate decimal(20,2);
UPDATE weather
SET Humidity_Rate=Humidity3pm-Humidity9am,
	Pressure_Rate=Pressure9am-Pressure3pm,
	Cloud_Rate=Cloud9am-Cloud3pm;