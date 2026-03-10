-- Find the film_title of all films which feature both UMA WOOD and FRED COSTNER
-- Order the results by film_title in descending order.
--  Warning: this is a tricky one and while the syntax is all things you know, you have to think a bit oustide the box 
--  to figure out how to get a table that shows pairs of actors in movies.
-- Put your query for Q5 here.
SELECT f.title AS film_title
FROM film f
JOIN film_actor fa1 ON f.film_id = fa1.film_id
JOIN actor a1 ON fa1.actor_id = a1.actor_id AND a1.first_name = 'UMA' AND a1.last_name = 'WOOD'
JOIN film_actor fa2 ON f.film_id = fa2.film_id
JOIN actor a2 ON fa2.actor_id = a2.actor_id AND a2.first_name = 'FRED' AND a2.last_name = 'COSTNER'
ORDER BY f.title DESC;