-- 1. Most Common Brand and Model
-- This helps identify the most frequently occurring electric vehicle.
SELECT brand, model, COUNT(*) as count
FROM electriccardata_clean
GROUP BY brand, model
ORDER BY count DESC
LIMIT 1;

-- 2. Average Top Speed by Brand
-- Analyzing performance based on top speed across brands.
SELECT brand, AVG(topspeed) AS avg_speed
FROM electriccardata_clean
GROUP BY brand
ORDER BY avg_speed DESC;

-- 3. Average Range by Acceleration Group
-- Shows whether better acceleration correlates with higher range.
SELECT 
  CASE 
    WHEN accel < 4 THEN 'Fast (<4s)'
    WHEN accel < 7 THEN 'Moderate (4-7s)'
    ELSE 'Slow (7s+)'
  END AS accel_group,
  AVG(range_km) AS avg_range
FROM electriccardata_clean
GROUP BY accel_group;

-- 4. Top 5 Cars with Longest Range
-- Helps consumers interested in endurance.
SELECT brand, model, range_km
FROM electriccardata_clean
ORDER BY range_km DESC
LIMIT 5;

-- 5. Distribution of Body Types (if you had this column)
-- Optional categorical insight. Replace or skip if plotting is not possible.
SELECT body_type, COUNT(*) AS count
FROM electriccardata_clean
GROUP BY body_type;
