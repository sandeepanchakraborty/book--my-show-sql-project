CREATE TABLE Show (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT,
    movie_id INT,
    date_id INT,
    show_time TIME,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (date_id) REFERENCES movieShowDate(date_id)
);

INSERT INTO Show (theatre_id, movie_id, date_id, show_time) VALUES
(1, 1, 1, '14:00:00'),
(1, 1, 1, '18:00:00'),
(2, 2, 1, '15:30:00'),
(2, 2, 1, '20:00:00');
