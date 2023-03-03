WITH hotels AS (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * 
FROM hotels 
LEFT JOIN dbo.market_segment$ AS market
ON hotels.market_segment = market.market_segment
LEFT JOIN dbo.meal_cost$ AS meal
ON hotels.meal = meal.meal;

/*
--See revenue trend by year and hotel type
SELECT
	arrival_date_year, 
	hotel,
	ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr),2) AS revenue
FROM hotel
GROUP BY arrival_date_year, hotel
ORDER BY hotel ASC;
*/