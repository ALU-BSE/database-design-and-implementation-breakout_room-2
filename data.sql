USE moto_taxi_db;

INSERT INTO riders (rider_id, name, motorcycle_plate) VALUES
(1, 'Prince Ndahiro', 'RAI-123'),
(2, 'Ishami Irenè', 'XYZ-789'),
(3, 'Belyse Intwaza', 'DEF-456');

INSERT INTO passengers (passenger_id, name, phone) VALUES
(1, 'Lincoln Batsinduka', '555-0101'),
(2, 'Charlie Brown', '555-0102'),
(3, 'Diana Prince', '555-0103');

INSERT INTO trips (trip_id, rider_id, passenger_id, fare, trip_date) VALUES
(1, 1, 1, 15.50, NOW()),
(2, 1, 2, 20.00, '2026-01-20 8:30:00'),
(3, 2, 3, 18.75, '2026-01-20 9:45:00'),
(4, 3, 1, 12.25, '2026-01-20 11:20:00'),
(5, 2, 2, 22.00, '2026-01-20 14:00:00');
