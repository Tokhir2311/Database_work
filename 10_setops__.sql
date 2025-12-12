select first_name from actor union select first_name from customer;

select first_name from actor union all select first_naem from customer; 

select city from city union select address from address;

select title from film union select first_name from customer;

select distinct store_id from inventory union select distinct store_id from staff;


--===========================================================================


select last_name from customer where customer_id in (select customer_id from payment union all select customer_id from rental);

select title from film where film_id in (select inventory_id from inventory except select inventory_id from rental);

select actor_id from actor where actor_id in (select actor_id from  film_actor) intersect select customer_id from customer where customer_id in (select customer_id from rental);

select staff_id from payment union select staff_id from rental;

select title from film where film_id not in (select film_id from inventory);


--===========================================================================


select language_id from film union select language_id from language ;
 
--select first_name, last_name from actor where actor_id in(select actor_id from film_actor where film_id in (select film_id from film)

select email from customer where customer_id in (select customer_id from rental union select customer_id from payment);

-- ? select film_id from film where film_id in (select inventory_id from inventory union select inventory_id from rental);

select title from film where film_id in (select inventory_id from inventory except select inventory_id from rental);


--==============================================================================


select customer_id from rental except select customer_id from payment;

select customer_id from rental union select customer_id from payment ;

--

--

select customer_id from payment except select customer_id from rental;


--================================================================================


select first_name from staff union select first_name from customer;

select store_id from staff except select store_id from inventory;

select name from language where language_id in (select language_id from film intersect select language_id from language);

-- ? select title from film where film_id in (select inventory_id from inventory except select inventory_id from rental); 

-- ? select first_name, last_name from actor where actor_id in (select actor_id from film_actor where film_id in ( select title from film where film_id in (select inventory_id from inventory except select inventory_id from rental)));  