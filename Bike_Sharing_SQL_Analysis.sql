-- =========================================
-- iNeuBytes Task 1
-- Bike Sharing Demand Analysis
-- Database: bike_sharing_analytics
-- =========================================

-- 1. Database Setup

-- 2. Data Inspection

-- 3. Data Cleaning

-- 4. KPI Analysis

-- 5. Time-Based Analysis

-- 6. Business Insights


CREATE DATABASE bike_sharing_analytics;

USE bike_sharing_analytics;

SELECT DATABASE();
SHOW TABLES;

SELECT COUNT(*) AS daily_records FROM day;
SELECT COUNT(*) AS hourly_records FROM hour;

SELECT COUNT(*) AS daily_records
FROM day;

SELECT COUNT(*) AS hourly_records
FROM `hour_fixed`;



SELECT
    COUNT(*) AS total_records,
    MIN(instant) AS first_id,
    MAX(instant) AS last_id
FROM `hour`;

USE bike_sharing_analytics;

CREATE TABLE hour_fixed (
    instant INT,
    dteday DATE,
    season INT,
    yr INT,
    mnth INT,
    hr INT,
    holiday INT,
    weekday INT,
    workingday INT,
    weathersit INT,
    temp DOUBLE,
    atemp DOUBLE,
    hum DOUBLE,
    windspeed DOUBLE,
    casual INT,
    registered INT,
    cnt INT
);

USE bike_sharing_analytics;

SHOW TABLES;

SELECT
    (SELECT COUNT(*) FROM day) AS daily_records,
    (SELECT COUNT(*) FROM hour_fixed) AS hourly_records;
    
    DESCRIBE day;

DESCRIBE hour_fixed;

SELECT
    SUM(instant IS NULL) AS missing_id,
    SUM(dteday IS NULL) AS missing_date,
    SUM(hr IS NULL) AS missing_hour,
    SUM(cnt IS NULL) AS missing_rentals,
    SUM(temp IS NULL) AS missing_temperature,
    SUM(hum IS NULL) AS missing_humidity
FROM hour_fixed;

SELECT
    instant,
    COUNT(*) AS duplicate_count
FROM hour_fixed
GROUP BY instant
HAVING COUNT(*) > 1;

SELECT
    MIN(dteday) AS first_date,
    MAX(dteday) AS last_date,
    MIN(hr) AS earliest_hour,
    MAX(hr) AS latest_hour,
    SUM(cnt) AS total_rentals,
    AVG(cnt) AS average_hourly_rentals
FROM hour_fixed;

CREATE TABLE hour_clean AS
SELECT *
FROM hour_fixed;

//* check duplicate id */
SELECT
    instant,
    COUNT(*) AS total_count
FROM hour_clean
GROUP BY instant
HAVING COUNT(*) > 1;

//* Invalid Values */
SELECT
    SUM(cnt < 0) AS negative_rentals,
    SUM(casual < 0) AS negative_casual,
    SUM(registered < 0) AS negative_registered,
    SUM(hr NOT BETWEEN 0 AND 23) AS invalid_hours,
    SUM(season NOT BETWEEN 1 AND 4) AS invalid_seasons,
    SUM(weathersit NOT BETWEEN 1 AND 4) AS invalid_weather
FROM hour_clean;

//* check rental calculation */

SELECT COUNT(*) AS inconsistent_records
FROM hour_clean
WHERE cnt <> casual + registered;

SELECT *
FROM hour_clean
WHERE cnt <> casual + registered
LIMIT 10;

//* Missing values again */
select
sum(instant is null) as missing_id,
sum(dteday is null) as missing_date,
sum(cnt is null) as missing_rentals
from hour_clean; 

//* Total bike Rental*/
select sum(cnt) as total_rentals
from hour_clean;

//* Casual Vs Registered rental */
select
sum(casual) as casual_rentals,
sum(registered) as registered_rentals,
sum(cnt) as total_rentals
from hour_clean;

//* Average hour rentals */
select round(avg(cnt),2) as average_rentals
from hour_clean;

//* Peak rental hour */
select hr as rental_hour,
sum(cnt) as total_rentals 
from hour_clean
group by hr
order by total_rentals desc;

//* working day vs non-working day */
SELECT
    CASE
        WHEN workingday = 1 THEN 'Working Day'
        ELSE 'Non-Working Day'
    END AS day_type,
    SUM(cnt) AS total_rentals,
    ROUND(AVG(cnt), 2) AS average_rentals
FROM hour_clean
GROUP BY workingday;

//* Monthly rental trends */
SELECT
    YEAR(dteday) AS rental_year,
    MONTH(dteday) AS rental_month,
    MONTHNAME(dteday) AS month_name,
    SUM(cnt) AS total_rentals
FROM hour_clean
GROUP BY
    YEAR(dteday),
    MONTH(dteday),
    MONTHNAME(dteday)
ORDER BY rental_year, rental_month;
