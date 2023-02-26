/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

select title from (select title
from (select film_id, title, unnest(special_features) as feat from film)a
where feat = 'Behind the Scenes')a join (select title
from (select film_id, title, unnest(special_features) as feat from film)a
where feat = 'Trailers')b using (title) order by title;
