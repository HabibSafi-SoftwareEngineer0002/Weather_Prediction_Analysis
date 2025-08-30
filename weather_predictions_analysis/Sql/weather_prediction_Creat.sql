CREATE TABLE weather(
Date date,
Location varchar(50),
MinTemp decimal(10,2),
MaxTemp decimal(10,2),
Rainfall decimal(10,2),
Evaporation decimal(10,2),
Sunshine decimal(10,2),
WindGustDir Varchar(50),
WindGustSpeed decimal(20,2),
WindDir9am varchar(50),
WindDir3pm varchar(50),
WindSPeed9am decimal(10,2),
Windspeed3pm decimal(10,2),
Humidity9am decimal(10,2),
Humidity3pm decimal(10,2),
Pressure9am decimal(30,2),
Pressure3pm decimal(30,2),
Cloud9am decimal(20,2),
CLoud3pm decimal(20,2),
Temp9am decimal(20,2),
Temp3pm decimal(20,2),
RainToday Boolean,
RainTomorrow Boolean
);

SELECT * FROM weather;