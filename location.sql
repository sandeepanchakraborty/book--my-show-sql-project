CREATE TABLE theatreLocation (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(20),
    area VARCHAR(20)
);

INSERT INTO theatreLocation (city, area) VALUES
('Mumbai', 'Colaba'),
('Bangalore', 'Indra Nagar');
