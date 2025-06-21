SELECT * FROM zomato;

#1 Top 10 Cities by Number of Restaurants
SELECT City, COUNT(*) AS Total_Restaurants
FROM zomato
GROUP BY City
ORDER BY Total_Restaurants DESC
LIMIT 10;

#2 Most Common Cuisines
SELECT Cuisines, COUNT(*) AS Count
FROM zomato
GROUP BY Cuisines
ORDER BY Count DESC
LIMIT 10;

SELECT * FROM zomato;

DROP TABLE zomato;

#3 Restaurants with Highest Ratings
SELECT Restaurant_Name, City, Aggregate_Rating
FROM zomato
WHERE Aggregate_Rating >= 4.5
ORDER BY Aggregate_Rating DESC, Votes DESC
LIMIT 10;

#4 Average Cost for Two by City
SELECT City, ROUND(AVG(`Average_Cost_for_two`), 2) AS Avg_Cost
FROM zomato
GROUP BY City
ORDER BY Avg_Cost DESC
LIMIT 10;

#5 Table Booking Availability Analysis
SELECT `Has_Table_booking`, COUNT(*) AS Count
FROM zomato
GROUP BY `Has_Table_booking`;

#6 Online Delivery Availability by City
SELECT City, COUNT(*) AS Online_Delivery
FROM zomato
WHERE `Has_Online_delivery` = 'Yes'
GROUP BY City
ORDER BY Online_Delivery DESC
LIMIT 10;

#7 Distribution of Restaurants by Price Range
SELECT `Price_range`, COUNT(*) AS Count
FROM zomato
GROUP BY `Price_range`
ORDER BY `Price_range`;

SELECT * FROM zomato;

#8 Rating Text Distribution
SELECT `Rating_text`, COUNT(*) AS Count
FROM zomato
GROUP BY `Rating_text`
ORDER BY Count DESC;

#9 Distribution of Restaurants by Rating Text and Table Booking
SELECT Rating_Text, Has_Table_booking, COUNT(*) AS Count
FROM zomato
GROUP BY Rating_Text, Has_Table_booking
ORDER BY Count DESC;

#10 Cuisines Offered by the Highest Rated Restaurant
SELECT Cuisines
FROM zomato
WHERE Aggregate_Rating = (
    SELECT MAX(Aggregate_Rating)
    FROM zomato
)
LIMIT 1;



