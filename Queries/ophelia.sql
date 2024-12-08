
SELECT windspeed,
       precipitation,
       date,
       time
FROM hourly_weather
WHERE date BETWEEN '2023-09-25' AND '2023-10-03'
ORDER BY date, time;
