/*
 * Management wants to advertise to actors,
 * and needs a list of all actors who are not also customers.
 *
 * Assume that if an entry in the customer and actor table share a first_name and last_name,
 * then they represent the same person.
 * Then select all actors who are not also customers.
 *
 * HINT:
 * This can be solved using either a LEFT JOIN or the NOT IN operator.
 */

select actor.last_name, actor.first_name from actor where (actor.last_name || actor.first_name) not in (select customer.last_name || customer.first_name from customer)  order by actor.last_name, actor.first_name;
