CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(50),
    movie_language VARCHAR(10),
    animation VARCHAR(10),
    certificate_rating VARCHAR(5),
    duration INT
);

INSERT INTO Movie (movie_name, movie_language, animation, certificate_rating, duration) VALUES
('Avatar: Way of water', 'English', '3D', 'UA', 120),
('Dasara', 'Telegu', '2D', 'UA', 110);
