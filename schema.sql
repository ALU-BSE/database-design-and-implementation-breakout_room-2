CREATE DATABASE IF NOT EXISTS moto_taxi_db;
USE moto_taxi_db;

DROP TABLE IF EXISTS trips;
DROP TABLE IF EXISTS passengers;
DROP TABLE IF EXISTS riders;

CREATE TABLE riders (
    rider_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    motorcycle_plate VARCHAR(50) NOT NULL
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(50) NOT NULL
);

CREATE TABLE trips (
    trip_id INT PRIMARY KEY,
    rider_id INT NOT NULL,
    passenger_id INT NOT NULL,
    fare DECIMAL(10, 2) NOT NULL,
    trip_date DATETIME NOT NULL,
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);
