-- Find the actor_id, first_name, last_name and total_combined_film_length of Drama films for every actor.
-- That is the result should list the names of all of the actors(even if an actor has not been in any Drama films)
-- and the total length of Drama films they have been in.
-- Look at the category table to figure out how to filter data for Drama films.
-- Order your results by all the actors first_name in ascending order.
-- Put query for Q3 here
SELECT a.actor_id,
       a.first_name,
       a.last_name,
       COALESCE(SUM(f.length), 0) AS total_combined_film_length
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film_category fc ON fa.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id AND c.name = 'Drama'
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY a.first_name ASC;
