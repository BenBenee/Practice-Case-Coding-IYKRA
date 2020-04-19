SELECT tmp.store_id, tmp.film_id, film.title, tmp.copies
FROM (SELECT inventory.store_id, inventory.film_id, count(inventory.film_id) as Copies
		FROM inventory
		GROUP BY inventory.store_id, inventory.film_id
		ORDER BY inventory.store_id) as tmp
INNER JOIN film
USING(film_id);