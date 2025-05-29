# BookMyShow Ticketing Platform Database

This project simulates a database schema for a ticketing platform like BookMyShow, where users can book tickets for movie shows depending on location, date and theatre.

The database includes entities such as Location, Theatre, Movie, Show, and Date.

## Entities and Attributes

### Theatre Location
- location_id (Primary Key)
- city
- area

### Theatre
- theatre_id (Primary Key)
- theatre_name
- location_id (Foreign Key referencing theatre location)
- capacity

### Movie
- movie_id (Primary Key)
- movie_name
- movie_language
- animation
- certificate_rating
- duration

### Movie Show Date
- date_id (Primary Key)
- show_date

### Show
- show_id (Primary Key)
- theatre_id (Foreign Key referencing Theatre)
- movie_id (Foreign Key referencing Movie)
- date_id (Foreign Key referencing Movie Show Date)
- show_time

## Table Structures

The SQL queries to create the tables and insert sample entries can be found in the following files:

- [theatre.sql](theatre.sql)
- [movie.sql](movie.sql)
- [date.sql](date.sql)
- [show.sql](show.sql)
- [location.sql](location.sql)

## Query to List Shows on a Given Date at a Given Theatre

The following SQL query retrieves all shows on a specific date at a particular theatre along with their show timings:

```sql
SELECT s.show_id, t.theatre_name, l.city, l.area, m.movie_name, s.show_time,
FROM Show s
INNER JOIN Theatre t ON s.theatre_id = t.theatre_id
INNER JOIN theatreLocation l ON t.location_id = l.location_id
INNER JOIN Movie m ON s.movie_id = m.movie_id
INNER JOIN movieShowDate d ON s.date_id = d.date_id
WHERE d.show_date = '2024-03-26' AND t.theatre_name = 'PVR' AND l.city = 'Mumbai' AND l.area = 'Colaba';
