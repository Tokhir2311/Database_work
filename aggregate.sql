/*  Retrieve all films with rental_rate > 2.99 and length < 90.
    Find all customers whose first name starts with 'M' or 'A'.
    List all films that are not rated 'R'.
    Find all customers who live in Texas and have active = true.
    Retrieve the top 10 most recently added films using ORDER BY film_id DESC LIMIT 10.
    List 5 actors whose first names end with 'a' using LIMIT.
    Find all staff whose email contains '@sakilacustomer.org'.
    Display all payments greater than 5.00 but less than 10.00.
    List the 10 shortest films that have 'ACTION' in their title.
    Find all inactive customers (active = false).
    Retrieve all rentals where the return date is still NULL.
    Display 10 addresses from countries not equal to 'United States'.
    Find all films released after 2005 and rated 'PG' or 'G'.
    List all customers who have rented a film containing 'DOG' in the title.
    Retrieve the 5 most expensive films (highest rental_rate) sorted descending. */
select * from film where rental_rate> 2.99 and length < 90;
=
select * from customer where first_name like 'A%' or first_name like 'M%';
=
select * from film where not rating = 'R';
=
select * from customer where city = 'Texas' and active = true;
=
select * from film order by film_id desc limit 10;
=
/* 31 savol xatoligi */ select * from actor where first_name like '%a' limit 5; -- we got 2 rows as a result
=
/* 32 da bironta natija chiqmadi lekin customer jadvalida 599 ta natija chiqdi */ 
select * from staff where email like '%@sakilacustomer.org%';
select * from customer where email like '%@sakilacustomer.org%';
=
select * from payment where amount between  5.00 and 10.00;
=
select * from film where title like '%ACTION%' order by length desc limit 10 ;
=
select * from customer where activebool = false ;
select * from customer where active = 0;
=

