
    SELECT
        rides.date,
        COUNT(*) AS total_rides,
        AVG(rides.trip_distance) AS avg_distance,
        weather.total_precipitation AS avg_precipitation,
        weather.avg_windspeed AS avg_wind_speed
    FROM (
        SELECT date, trip_distance FROM yellow_trips
        UNION ALL
        SELECT date, trip_miles AS trip_distance FROM uber_trips) rides
    LEFT JOIN daily_weather weather ON strftime('%d-%m-%Y',rides.date) = strftime('%d-%m-%Y',weather.date)
    WHERE rides.date LIKE '2023-%'
    GROUP BY rides.date
    ORDER BY total_rides DESC
    LIMIT 10;
