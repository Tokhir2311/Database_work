/*  Count total number of payments.
    Find total amount paid (sum of all amounts).
    Calculate average payment amount.
    Find the smallest and largest payment amounts.
    Count how many payments each customer made.
    Total amount paid by each customer.
    Average payment amount per customer.
    Customers who made more than 10 payments.
    Customers whose total payments exceed 150.
     Customers whose average payment exceeds 5.
     Count of payments per staff member.
     Total amount collected by each staff.
     Staff who collected more than 1000 in total.
     Average payment per staff.
     Number of payments made on each date.
     Count total rentals.
     Find the earliest and latest rental dates.
     Count how many rentals each customer made.
     Customers with more than 20 rentals.
     Average number of rentals per day (using GROUP BY rental_date::date).
     Count how many times each staff processed a rental.
     Staff with more than 100 rentals handled.
     Count of rentals per return_date (group by return_date).
     Days where more than 50 rentals occurred.
     Average rental_id per staff (nonsensical mathematically, but forces use of aggregate).
     Count total customers.
     -- Count customers by active status.
     -- Count customers by store_id.
     Stores having more than 300 customers.
     --Average customer ID per store (training grouping only).
     Count customers by create_date (group by date).
     Count how many customers were added per day.
     Days where more than 5 customers were added.
     Count how many films exist per rating.
     Ratings that have more than 200 films.
     Average rental rate per rating.
     Average length per rating.
     Ratings with average rental rate above 3.0.
    Count how many films have the same replacement cost.
    Replacement cost values that appear in more than 10 films. */

select count(*) from payment;
=
select sum(amount) from payment;
=
select round(avg(amount), 2) from payment;
=
select MIN(amount) as kichik, MAX(amount) as katta from payment;
=
select count(customer_id) from payment; xatooooooooooooooooooooo
=
select customer_id ,sum(amount) as total_spent from payment group by customer_id;
=
select customer_id, round(avg(amount), 2) as avg_spent from payment group by customer_id having count(*) > 10;
=
select customer_id , sum(amount) from payment group by customer_id having sum(amount) > 150;
=
select customer_id , round(avg(amount), 2) from payment group by customer_id having avg(amount) > 5;
=
select staff_id , count(*) from payment GROUP BY staff_id;
=
select staff_id, sum(amount) from payment group by staff_id;
=
select staff_id, sum(amount) from payment group by staff_id having sum(amount) > 1000;
=
select staff_id, round(avg(amount), 3) average from payment group by staff_id ;
=
select payment_date , count(sum(*)) from payment group by payment_date;
=
----- select count(*) from rental;
=
select min(rental_date) earliest, max(rental_date) latest from rental;
=
select customer_id , count(*) from rental group by customer_id;
=
select customer_id , count(*) from rental group by customer_id having count(*) > 20;
=
select round(avg(n),3) from (select rental_date::date, round(count(*), 1) n  from rental group by rental_date::date )"kunlik o'rtacha ";
=
select staff_id , count(*) from rental group by staff_id;
=
select staff_id , count(*) from rental group by staff_id having count(*) > 100;
=
select return_date , count(*) from rental group by return_date ;
=
select return_date , count(*) from rental group by return_date having count(*) > 50;
=
select round(avg(c), 2) from (select staff_id, count(rental_id) c from rental group by staff_id);
=
select count(*) from customer as "NUMBER OF CUSTOMERS";
=
select count(activebool) from customer as "NUMBER OF CUSTOMERS";
select count(active) from customer as "NUMBER OF CUSTOMERS";
=
select count(store_id) from customer;
=
select store_id , count(customer_id) from customer group by store_id having count(customer_id) > 300;
=
select create_date, count(customer_id) from customer group by create_date;
=
select create_date , count(customer_id) from customer group by create_date;
=
select create_date , count(customer_id) from customer group by create_date having count(*) > 5;
=
select rating, count(film_id) from film group by rating;
=
select rating, count(film_id) from film group by rating having count(film_id)> 200;
=
select round(avg(son), 2) from (select rating, count(*) son from film group by rating);
=
select rating, round(avg(length), 3) as  AVG from film group by rating; 
=
select rating, avg(rental_rate) from film group by rating having avg(rental_rate)>3.0;
=
select replacement_cost, count(*) from film group by replacement_cost;
=
select replacement_cost, count(*) from film group by replacement_cost having count(*) > 10;
========================================== 

 



