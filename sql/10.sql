/*
 * Management is planning on purchasing new inventory.
 * Films with special features cost more to purchase than films without special features,
 * and so management wants to know if the addition of special features impacts revenue from movies.
 *
 * Write a query that for each special_feature, calculates the total profit of all movies rented with that special feature.
 *
 * HINT:
 * Start with the query you created in pagila-hw1 problem 16, but add the special_features column to the output.
 * Use this query as a subquery in a select statement similar to answer to the previous problem.
 */

select c.special_features as special_feature, sum(b.profit) as profit from (SELECT film_id, sum(amount) AS profit FROM film JOIN inventory USING (film_id) JOIN rental using (inventory_id) JOIN payment using (rental_id) GROUP BY film_id ORDER BY profit DESC)b join (select film_id, unnest(special_features) as special_features from film)c using (film_id) group by c.special_features order by c.special_features;
