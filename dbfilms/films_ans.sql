-- SHOW TABLES;

-- TODO: QUESTION 1 ANSWER

-- SELECT category.name , category.category_id,film.release_year,film.film_id ,
-- count(category.category_id) as numbers_of_film from category
-- left join 
-- film_category on film_category.category_id = category.category_id
-- right join film  on
-- film.film_id = film_category.film_id where film.release_year = "2018" order by category.category_id;


-- TODO: QUESTION 2 ANSWER

-- UPDATE address INNER join actor ON actor.address_id = address.address_id 
-- SET address = "677 street " where actor.actor_id =36;

-- select actor.actor_id ,address.address from actor
--  join address on actor.address_id  = address.address_id where actor.actor_id = 36;

-- TODO: QUESTION 3 ANSWER

-- insert into film_actor (actor_id,film_id)values(115,41);
-- select * from film_actor where film_id = 41;

-- insert into film_actor (actor_id,film_id)values(115,41),(85,41) on DUPLICATE KEY UPDATE
-- film_id = values(film_id),actor_id = values(actor_id);

-- SELECT * from film_actor where actor_id  = 115 AND film_id = 41;

-- TODO: QUESTION 4 ANSWER

-- SELECT DISTINCT TITLE from film INNER join film_actor 
-- ON film_actor.film_id  = film.film_id INNER join actor
--   ON actor.actor_id =  film_actor.actor_id INNER join address
--     ON address.address_id = actor.address_id INNER join CITY
--       ON CITY.CITY_ID =  address.CITY_ID INNER join COUNTRY 
--         ON COUNTRY.COUNTRY_ID  = CITY.COUNTRY_ID where COUNTRY.COUNTRY = "INDIA" LIMIT 10;

-- TODO: QUESTION 5 ANSWER

-- SELECT count(*) from actor INNER join address
-- ON address.address_id = actor.address_id INNER JOIN CITY
--   ON CITY.CITY_ID = address.CITY_ID INNER JOIN COUNTRY 
--     ON CITY.COUNTRY_ID = COUNTRY.COUNTRY_ID  where COUNTRY.COUNTRY ="UNITED STATES" ;
 
-- TODO: QUESTION 6 ANSWER

-- select language.name , film.release_year, count(language.language_id) as numbers_of_film
-- from language left join film on
-- film.language_id = language.language_id where film.release_year between 2001 AND 2010; 

-- select language.name , film.release_year, count(language.language_id) as numbers_of_film
-- from language left join film on
-- film.language_id = language.language_id where film.release_year between 2001 AND 2010 group by
-- language.language_id;

-- TODO: QUESTION 7 ANSWER

-- UPDATE film SET language_id = (select language.language_id from language
--  where language.name = "English") where film.film_id = 17;

-- select * from film where film_id = 1;

-- TODO: QUESTION 8 ANSWER

-- select CONCAT(actor.first_name," ",actor.last_name) as actor_name ,
-- film.title,film.release_year,film.rating from actor INNER join film_actor on
-- film_actor.actor_id = actor.actor_id INNER join film on film.film_id =  film_actor.film_id where
-- film.release_year between 2005 AND 2015 AND film.rating = "PG";

-- TODO: QUESTION 9 ANSWER

-- select film.title,film.release_year ,count(film.release_year) as numbers_of_film from film
-- group by (film.release_year) order by count(film.release_year ) desc LIMIT 1 ;


-- TODO: QUESTION 10 ANSWER

-- select film.title,film.release_year ,count(film.release_year) as numbers_of_film from film
-- group by (film.release_year) order by count(film.release_year ) asc LIMIT 1 ;

-- TODO: QUESTION 11 ANSWER

-- SELECT * ,language.name as language from film  left join language on 
-- language.language_id = film.language_id where film.release_year = "2014"  AND film.length = 
-- (select max(film.length) from film);

-- TODO: QUESTION 12 ANSWER

-- SELECT film.film_id,film.title,film.description, film.release_year,film.length,film.rating,
-- category.name, language.name from film  
-- left join language on language.language_id = film.language_id
-- right join
-- film_category on film_category.film_id = film.film_id
-- left join
-- category on category.category_id = film_category.category_id 
-- where film.rating="NC-17" AND category.name = "Sci-Fi";

-- TODO: QUESTION 13 ANSWER
--  1.  insert into CITY (city,country_id)values('florences',(select COUNTRY_ID from COUNTRY 
-- where COUNTRY.COUNTRY='Italy'));

-- UPDATE address INNER join actor on actor.address_id = address.address_id
-- SET
-- address.address = "055,Piazzale Michel angelo", address.district = "Rifredi"
-- , address.city_id = (select city_id from city where city.city ="Florence"),
-- address.postal_code = "50125" where actor.actor_id = 16;


-- TODO: QUESTION 15 ANSWER

-- insert into film_category(category_id,film_id)values((select category_id from category
-- where category.name = "Action"),(select film_id from film where film.title= "No Time to Die")),
-- ((select category_id from category where category.name = "Classics"),
-- (select film_id from film where film.title="No Time to Die")),
-- ((select category_id from category where category.name="Drama"),
-- (select film_id from film where film.title ="No Time to Die"));

-- TODO: QUESTION 17 ANSWER

-- insert into category(name)values("Thriller");
-- insert into film_category(film_id,category_id)values((select film_id from film 
-- where film.title ="ANGELS LIFE"),(select category_id from category where category.name = "Thriller"));

-- TODO: QUESTION 18 ANSWER

-- select actor_id, count(actor_id) from film_actor group by actor_id order by count(actor_id) desc limit 1;

-- TODO: QUESTION 19 ANSWER

-- delete from film_actor where film_id  = (
-- select film_id from film where film.title = "GRAIL FRANKENSTEIN") AND 
-- actor_id = (select actor_id from actor where actor.first_name = "JOHHNY" AND
-- actor.last_name = "LOLLOBRIGIDA");

-- TODO: QUESTION 23 ANSWER
-- select count(*) from film_actor 
-- INNER JOIN film ON
-- film.film_id = film_actor.film_id where film.release_year = 2017;

-- TODO: QUESTION 26 ANSWER

-- select sum(film.length) from film where film.release_year = 2018;

-- TODO: QUESTION 27 ANSWER

-- select language.name,film.title,film.release_year,film.length from film left JOIN
-- language on language.language_id = film.language_id 
-- where film.length = (select min(film.length)from film);

-- TODO: QUESTION 28 ANSWER

-- select film.release_year,count(film.release_year) as numbers_of_film from film group by film.release_year;

-- TODO: QUESTION 29 ANSWER

-- select language.name,count(film.language_id) as numbers_of_film from film 
-- INNER JOIN language on
-- language.language_id = film.language_id group by film.length;

-- second case order by language name

-- select language.name,count(film.language_id) as numbers_of_film from film 
-- INNER JOIN language on
-- language.language_id = film.language_id group by language.name;

-- TODO: QUESTION 30 ANSWER

-- select actor_id,count(actor_id) from film_actor group by actor_id order by count(actor_id) asc LIMIT 1;





