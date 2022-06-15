-- List the number of films per category.
SELECT category.name, COUNT(film_category.film_id)
FROM category
INNER JOIN film_category
ON category.category_id=film_category.category_id
GROUP BY name;

-- Display the first and the last names, as well as the address, of each staff member.
SELECT staff.first_name,staff.last_name, address.address
FROM staff
INNER JOIN address
ON staff.address_id=address.address_id;

-- Display the total amount rung up by each staff member in August 2005.
SELECT staff.first_name,staff.last_name,payment.amount
FROM staff
INNER JOIN payment
ON staff.staff_id=payment.staff_id 
WHERE DATE(payment_date) BETWEEN '2005-08-01' AND '2005-08-31';

-- List all films and the number of actors who are listed for each film.
SELECT film.title, COUNT(film_actor.actor_id)
FROM film
INNER JOIN film_actor
ON film.film_id=film_actor.film_id
GROUP BY film.title;

-- Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
SELECT customer.first_name, customer.last_name, SUM(payment.amount)
FROM customer
JOIN payment
ON customer.customer_id=payment.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY customer.last_name DESC;