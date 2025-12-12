select address from customers where activbool is not null;

select title from film where rental_rate > 2 and release_year = '2006';

select i.store_id from inventory as i join rental as r on i.inventory_id=r.inventory_id;

select email from customer where email like '%@gmail.com';

select round(avg(length), 2) as ortachasi, min(length), max(length) from film;

select rental_id, rental_date from rental where rental_date between '2005-05-01' and '2005-05-31';

select count(customer_id) from customer where active is not null;

select rental_rate from film  order by rental_rate asc;

select replacement_cost from film order by replacement_cost desc;

select count(film_id) from inventory group by store_id;

select title from film where title like 'A%';

select first_name from customer where first_name ilike '%jo%';

select title from film where rental_rate > 2 and replacement_cost > 20;

select first_name from actor union select first_name from customer;

select first_name from actor union all select first_name from customer;


--============================================ MIDDLE  ==

select c.first_name, c.last_name, r.rental_id, r.rental_date from customer as c inner join rental as r on c.customer_id = r.customer_id;

select s.store_id, st.first_name from store as s left join staff as st on s.store_id = st.store_id;

select r.rental_id as rental_table, i.inventory_id as inventory_id  from rental as r right join inventory as i on r.inventory_id = i.inventory_id ; 

select f.title, l.name from film as f full join language as l on f.language_id=l.language_id where f.title is null or l.name is null ;

--middle 5 

--middle 6 select length, rental_rate from film order by length, rental_rate;

--middle 7 

select film_id from inventory order by film_id desc;

select avg(rental_rate) as ren_avg, min(rental_rate) as ren_mn, max(rental_rate) as ren_mx, avg(replacement_cost) as rep_avg, min(replacement_cost) as rep_mn, max(replacement_cost) as rep_mx from film;

select count(first_name), active from customer group by active;

--=====================================================ADvanced

select * from 