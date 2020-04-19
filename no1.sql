SELECT title, description, rating
FROM film
WHERE description like '%Astronaut%'
ORDER BY rentar_rate desc limit 5;