--ex1
select * from film ;

--ex2
select first_name, last_name from customer;

--ex3
select distinct rating from film;

--ex4
??? [SELECT * FROM film WHERE rental_rate > 4.00; ]

--ex5 
select first_name from actor_info where first_name = 'PENELOPE';

--ex6
??

--ex7
select title from film where title = 'ACADEMY DINOSAUR';

--ex8
select last_name from actor_info where last_name = 'NOLTE';

--ex9
select replacement_cost from film where replacement_cost < 10.00;

--ex10
??

--ex11
select title, release_year from film;

--ex12
select distinct language_id from film;

--ex13
select *  from customer where customer_id = 50;

--ex14
select *  from film where release_year = 2006;

--ex15
select first_name from actor_info ;

--ex16
?? [easy]

--ex17
select *  from film where rental_duration = 6;

--18
select customer_id, email, first_name from customer;

--19
select distinct rating, rental_duration from film;

--20
 select first_name from actor where first_name = 'WHOOPI';

 --21
 insert into film (title, language_id)
sakila_db-# values ( 'THE GREAT ESCAPE' , 1);
INSERT 0 1


--22
??

--23
select * from customer where store_id = 1;

--24
select * from actor where last_name = 'DEGENERES';

--ex25
select * from film where rental_rate between 1.00 and 3.00 ;

--ex26
??

--ex27
select * from film where replacement_cost between 12.0 and 18.0;

--28
select last_name from actor order by last_name;

--29
select * from film order by title desc;

--30
select * from customer order by first_name;
