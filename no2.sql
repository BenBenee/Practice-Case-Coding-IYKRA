SELECT title, description, rating, replacement_cost
FROM film
WHERE replacement_cost between 5 and 15 and rating ='R'
ORDER BY replacement_cost;