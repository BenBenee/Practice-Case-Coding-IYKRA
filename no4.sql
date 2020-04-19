SELECT concat(customer.first_name, ' ', customer.last_name) as FullName, email, sum(amount) as RentAmount
FROM payment
INNER JOIN customer
USING (customer_id)
GROUP BY customer_id
ORDER BY RentAmount desc limit 5;