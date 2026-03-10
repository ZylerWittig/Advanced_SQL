-- We want to find out how many of each category of film GRACE MOSTEL has starred in.
-- So return a table with category_name and the count as the number_of_films that GRACE was in that category.
-- Your query should return a non-null value for every category even if GRACE has been in no films in that category.
-- Order by the category name in descending order.
-- Put query for Q2 here
SELECT c.name AS category_name,
       COUNT(fa.film_id) AS number_of_films
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN (
    SELECT fa.film_id
    FROM film_actor fa
    JOIN actor a ON fa.actor_id = a.actor_id
    WHERE a.first_name = 'GRACE' AND a.last_name = 'MOSTEL'
) AS fa ON fc.film_id = fa.film_id
GROUP BY c.name
ORDER BY c.name DESC;
