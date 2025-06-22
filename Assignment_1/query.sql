SELECT COUNT(*)
FROM green_taxi_data
WHERE lpep_pickup_datetime >= '2019-09-18 00:00:00'
  AND lpep_pickup_datetime < '2019-09-19 00:00:00';

SELECT lpep_pickup_datetime::date
FROM green_taxi_data
ORDER BY trip_distance DESC
LIMIT 1;

SELECT 
    z.Borough,
    SUM(t.total_amount) AS total_amount_sum
FROM green_taxi_data t
JOIN taxi_zone_data z
  ON t.PULocationID = z.LocationID
WHERE t.lpep_pickup_datetime::date = '2019-09-18'
  AND z.Borough != 'Unknown'
GROUP BY z.Borough
HAVING SUM(t.total_amount) > 50000
ORDER BY total_amount_sum DESC
LIMIT 3;

SELECT 
    drop_z."Zone"
FROM green_taxi_data t
JOIN taxi_zone_data pickup_z 
    ON t."PULocationID" = pickup_z."LocationID"
JOIN taxi_zone_data drop_z 
    ON t."DOLocationID" = drop_z."LocationID"
WHERE pickup_z."Zone" = 'Astoria'
  AND t."lpep_pickup_datetime" >= '2019-09-01'
  AND t."lpep_pickup_datetime" < '2019-10-01'
ORDER BY t."tip_amount" DESC
LIMIT 1;
