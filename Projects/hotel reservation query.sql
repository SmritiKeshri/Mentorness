SELECT * FROM 2ndproject.`hotel reservation dataset`;

SELECT count(*) FROM 2ndproject.`hotel reservation dataset`;

SELECT type_of_meal_plan, count(type_of_meal_plan)
AS meal_plan_count FROM 2ndproject.`hotel reservation dataset` 
GROUP BY type_of_meal_plan 
LIMIT 1;

SELECT avg(avg_price_per_room) From 2ndproject.`hotel reservation dataset` where no_of_children!=0;

SELECT count(*) AS reservation_count FROM 2ndproject.`hotel reservation dataset`  WHERE year(arrival_date)=2018;

SELECT room_type_reserved  FROM 2ndproject.`hotel reservation dataset` GROUP BY room_type_reserved ORDER BY count(room_type_reserved) DESC LIMIT 1;

SELECT COUNT(no_of_weekend_nights) AS reservation_on_weekend FROM 2ndproject.`hotel reservation dataset` where no_of_weekend_nights>0;

SELECT max(lead_time) AS highest_lead_time, min(lead_time) AS lowest_lead_time FROM 2ndproject.`hotel reservation dataset`;

SELECT market_segment_type FROM 2ndproject.`hotel reservation dataset` GROUP BY market_segment_type  ORDER BY market_segment_type DESC  limit 1;

SELECT count(booking_status) AS confirmed_booking FROM 2ndproject.`hotel reservation dataset`  where booking_status = 'Not_canceled';

SELECT (sum(no_of_adults)+sum(no_of_children)) AS no_of_adults_and_children FROM 2ndproject.`hotel reservation dataset` ;

SELECT avg(no_of_weekend_nights) AS avg_weekend_and_children FROM 2ndproject.`hotel reservation dataset` where no_of_children>0;

SELECT count(Booking_ID) as Reservation, month(arrival_date), year(arrival_date) FROM 2ndproject.`hotel reservation dataset` GROUP BY  year(arrival_date),month(arrival_date) ORDER BY year(arrival_date);

SELECT AVG(no_of_weekend_nights + no_of_week_nights), room_type_reserved FROM 2ndproject.`hotel reservation dataset`  GROUP BY room_type_reserved ORDER BY room_type_reserved;

SELECT sum(no_of_children), room_type_reserved, avg(avg_price_per_room) FROM 2ndproject.`hotel reservation dataset`  GROUP BY room_type_reserved ORDER BY sum(no_of_children) desc limit 1;

SELECT market_segment_type, AVG(avg_price_per_room) AS highest_avg_price FROM 2ndproject.`hotel reservation dataset` GROUP BY market_segment_type ORDER BY AVG(avg_price_per_room) DESC limit 1;
