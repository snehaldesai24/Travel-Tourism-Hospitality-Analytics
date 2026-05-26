-- Total Bookings
SELECT COUNT(*) AS total_bookings
FROM hotel_bookings;

-- Total Cancellations
SELECT COUNT(*) AS total_cancellations
FROM hotel_bookings
WHERE is_canceled = 1;

-- Average ADR
SELECT AVG(adr) AS avg_adr
FROM hotel_bookings;

-- Cancellations by Customer Type
SELECT customer_type, COUNT(*) AS cancellations
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY customer_type
ORDER BY cancellations DESC;

-- Market Segment Analysis
SELECT market_segment, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY market_segment
ORDER BY total_bookings DESC;
