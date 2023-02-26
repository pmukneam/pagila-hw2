/*
 * A group of social scientists is studying American movie watching habits.
 * To help them, select the titles of all films that have never been rented by someone who lives in the United States.
 *
 * NOTE:
 * Not every film in the film table is available in the store's inventory,
 * and you should only return films in the inventory.
 *
 * HINT:
 * This can be solved either with a LEFT JOIN or with the NOT IN operator.
 * You may choose whichever solution makes the most sense to you.
 */

select t.title from (select distinct(title), film_id from film join inventory using (film_id) )t where t.title not in (select title from film join inventory using (film_id) join rental using (inventory_id) join customer using (customer_id) join address using (address_id) join city using (city_id) join country using (country_id) where country = 'United States') order by t.title;
