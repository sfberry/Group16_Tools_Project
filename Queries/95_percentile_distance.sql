
WITH combined_trips AS (
    SELECT trip_distance AS distance
    FROM yellow_trips
    WHERE pickup_datetime BETWEEN '2024-01-01' AND '2024-01-31'

    UNION ALL

    SELECT trip_miles AS distance
    FROM uber_trips
    WHERE pickup_datetime BETWEEN '2024-01-01' AND '2024-01-31'
),
sorted_trips AS (
    SELECT distance,
           ROW_NUMBER() OVER (ORDER BY distance) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM combined_trips
)
SELECT distance AS p95_distance
FROM sorted_trips
WHERE row_num = CAST(0.95 * total_rows AS INT);
