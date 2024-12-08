
CREATE TABLE IF NOT EXISTS yellow_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime TEXT,
    dropoff_datetime TEXT,
    date TEXT,
    trip_distance FLOAT,
    long_pickup FLOAT,
    lat_pickup FLOAT,
    long_dropoff FLOAT,
    lat_dropoff FLOAT,
    tips FLOAT,
    total_amount FLOAT,
    surcharges FLOAT,
    fare_amount FLOAT,
    tolls FLOAT,
    taxes FLOAT
);

CREATE TABLE IF NOT EXISTS uber_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime TEXT,
    dropoff_datetime TEXT,
    date TEXT,
    trip_miles FLOAT,
    long_pickup FLOAT,
    lat_pickup FLOAT,
    long_dropoff FLOAT,
    lat_dropoff FLOAT,
    total_amount FLOAT,
    tips FLOAT,
    surcharges FLOAT,
    fare_amount FLOAT,
    tolls FLOAT,
    taxes FLOAT
);


CREATE TABLE IF NOT EXISTS hourly_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT,
    time TEXT,
    precipitation FLOAT,
    windspeed FLOAT,
    snowfall FLOAT
);

CREATE TABLE IF NOT EXISTS daily_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT,
    total_precipitation FLOAT,
    avg_windspeed FLOAT,
    total_snowfall FLOAT
;
