/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */


select feat as special_features, count(*) from (select feat
from (select title, unnest(special_features) as feat from film)t)b group by special_features order by special_features;
