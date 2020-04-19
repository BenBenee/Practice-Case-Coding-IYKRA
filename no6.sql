select concat(customer.first_name, ' ', customer.last_name) as FullName, customer.email,
		tmp.transactions
from (select payment.customer_id, count(customer_id) as transactions
		from payment
		group by customer_id
		having count(customer_id) >= 40) as tmp
inner  join customer 
using(customer_id)
order by transactions desc
