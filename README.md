## Group 16

## Project Explanation
For this project, it was our goal to process/manage data, comprehend the data to answer various questions, and to visualize the data. In March 2022, Uber was going to allow New Yorkers to hire yellow taxis through its app. Our job was to look at historical data and analyze trends based off of why these two forms of transportations are competitors.

We first downloaded hired-ride trip data from Uber and NYC Yellow Cab from the dates of January 2020-August 2024 as well as weather data from 2020 through 2024. Uploaded to our local storage was the zip file (which was unzipped) called taxi_data from the TLC_url website, as well as the weather CSV files labelled: 2020_weather.csv, 2021_weather.csv, 2022_weather.csv, 2023_weather.csv, 2024_weather.csv.

Since we had so much data, we created a sample of each month for the ride data using Cochran's formula. We then cleaned the data by taking out any unecessary columns and normalizing them, leaving the columns we needed.

After all the data was downloaded, we stored data using Sqlite3 and sqlalchemy. We populated four tables of the following sampled datasets: yellow yaxi trips, uber trips, hourly weather, and daily weather. These four tables then had their own schema, which was used to help us understand the data by answering the queries and creating visualizations.

This repository consists of the following:
- Schema file --> to help create the tables
- README.md file --> description and implementation of code/project
- requirements.txt --> any imports and python packages
- Source code --> our final project code submission
- .gitignore --> files to ignore
- queries --> SQL code for our queries
- Heatmap Visual.png --> Heatmap visual for visualization 6 screenshot

## University IDs:
UNIs: [sf3269, yo2315]
