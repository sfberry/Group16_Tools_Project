
WITH snowiest_days AS (
    SELECT
        DATE(date) AS date, -- Convert datetime to date
        total_snowfall
    FROM daily_weather
    WHERE DATE(date) BETWEEN '2020-01-01' AND '2024-08-31'
    ORDER BY total_snowfall DESC
    LIMIT 10),
all_rides AS (
    SELECT
        DATE(pickup_datetime) AS ride_date, -- Ensure consistent date format
        COUNT(*) AS total_rides
    FROM (
        SELECT pickup_datetime FROM yellow_trips
        UNION ALL
        SELECT pickup_datetime FROM uber_trips
    )
    GROUP BY ride_date
)
SELECT
    sd.date,
    sd.total_snowfall,
    COALESCE(ar.total_rides, 0) AS total_rides
FROM snowiest_days sd
LEFT JOIN all_rides ar
ON sd.date = ar.ride_date
ORDER BY sd.total_snowfall DESC;
