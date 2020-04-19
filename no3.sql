SELECT concat(staff.first_name, ' ', staff.last_name) as staffName, count(staff_id) as RentCount,
		sum(amount) as RentAmount
FROM payment
INNER JOIN staff
USING (staff_id)
GROUP BY staff_id
ORDER BY RentCOunt desc;