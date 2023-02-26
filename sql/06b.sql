/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

--select title from film where film_id in (select film_id from film left join inventory using (film_id) except select film_id from inventory) order by title;
--


SELECT film.title
FROM film
LEFT JOIN inventory using (film_id)
WHERE inventory.film_id IS NULL
ORDER BY film.title;
