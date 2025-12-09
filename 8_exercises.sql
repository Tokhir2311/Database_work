Level 1: Basic INNER JOINs (Single Join)

    List all film titles and their language names.
select f.title, l.name from film as f join language as l on f.language_id = l.language_id ; 
    (Join film and language)

    Show the first and last names of all actors who acted in the film "ACADEMY DINOSAUR".
select a.first_name, a.last_name from actor as a join film_actor as fa on fa.actor_id = a.actor_id join film as f on f.film_id = fa.film_id where f.title = 'ACADEMY DINOSAUR';
    (Join actor, film_actor, film)

    Display all customer names and their email addresses.
select first_name , last_name, email from customer order by first_name;
    (Join customer with no other table — warm-up)

    List customer full names and the names of the stores they registered at.
select c.first_name , c.last_name, s.store_id from customer as c join store as s on c.store_id = s.store_id;
    (Join customer and store)

    Show all films and their categories.
select f.title, c.name from film as f join film_category as fc on f.film_id = fc.film_id join category as c on c.category_id = fc.category_id where c.name = 'Horror';
    (Join film, film_category, category)

    List staff members and their respective store address.
select s.first_name, s.last_name, a.address from staff as s join address as a on a.address_id = s.address_id;
    (Join staff, address)

    Get the titles of all films rented by customer “MARY SMITH”.
select f.title from film as f join inventory as i on f.film_id=i.film_id join rental as r on i.inventory_id=r.inventory_id join customer as c on r.customer_id = c.customer_id group by f.title;
    (Join customer, rental, inventory, film)

Level 2: Two-table Joins with Filters

    List the names of all customers who rented at least one film.
select c.first_name, c.last_name from customer as c join rental as r on c.customer_id = r.customer_id ;
    (Join customer and rental with DISTINCT)

    Show all films that are in the 'Comedy' category.
select f.title from film as f join film_category as fc on f.film_id = fc.film_id join category as c on c.category_id = fc.category_id where  c.name = 'Comedy';
    (Join film_category, category, film with filter on category name)

    List all payments along with the customer names who made them.
select sum( p.amount), c.first_name, c.last_name from payment as p join customer as c on p.customer_id = c.customer_id group by c.first_name, c.last_name;
    (Join payment and customer)

    Get the titles and rental rates of all films longer than 120 minutes.
select title, rental_rate from film where length > 120 group by title, rental_rate;
    (Join film only — no join needed — easy confidence builder)

    List the staff who processed each rental transaction.
select r.rental_id, r.rental_date, s.first_name, s.last_name from rental as r join staff as s on s.staff_id = r.staff_id;
    (Join rental and staff)

    Display all customers and the cities they live in.
select c.first_name, c.last_name, ct.city from customer as c join address as a on a.address_id = c.address_id join city as ct on ct.city_id = a.city_id;
    (Join customer, address, city)



🔹 Level 3: Multi-table Joins

    List all customers and the films they have rented, with the film title and rental date.
select c.first_name, c.last_name, f.title, r.rental_date from customer as c join rental as r on c.customer_id=r.customer_id  
sakila_db-# join inventory as i on i.inventory_id=r.inventory_id 
sakila_db-# join film as f on i.film_id = f.film_id;
    (Join customer, rental, inventory, film)


    Show film titles, actor names, and categories.
select f.title, a.first_name, a.last_name, c.name from actor as a join film_actor as fa on fa.actor_id = a.actor_id  join film as f on fa.film_id=f.film_id  join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id = c.category_id;
    (Join film, film_actor, actor, film_category, category)


    Find all rentals and include customer name, staff name, film title, and rental date.
select c.first_name, c.last_name, s.first_name, s.last_name, f.title, r.rental_date, r.rental_id from customer as c join staff as s on c.store_id = s.store_id join rental as r on s.staff_id=r.staff_id join inventory as i on r.inventory_id = i.inventory_id join film as f on i.film_id = f.film_id;
    (Join rental, customer, staff, inventory, film)


    Display a list of customers, their email, and the store city they are associated with.
select c.first_name, c.last_name, c.email, ct.city from customer as c join store as s on c.store_id=s.store_id join address as a on s.address_id=a.address_id join city as ct on a.city_id=ct.city_id;
    (Join customer, store, address, city)


    List the top 10 most rented films with the number of times each was rented.
select f.title, count(r.rental_id) from film as f join inventory as i on f.film_id = i.film_id join rental as r on i.inventory_id = r.inventory_id group by f.title,r.rental_id;
    (Join rental, inventory, film + GROUP BY + COUNT)



INNER JOIN
Basic Level

    List all films with their language names.
select f.title, l.name from film as f join language as l on f.language_id=l.language_id;

    Show all actors with their film titles.
select a.first_name, f.title from actor as a join film_actor as fa on a.actor_id=fa.actor_id join film as f on fa.film_id=f.film_id group by a.first_name, f.title;

    Display customer names with their corresponding rental dates.
select c.first_name, c.last_name, date(r.rental_date) from customer as c join rental as r on c.customer_id=r.customer_id;

    Find all staff members and the addresses where they work.
select s.first_name, s.last_name, ct.city from staff as s join store as st on st.store_id=s.store_id join address as a on st.address_id=a.address_id join city as ct on a.city_id=ct.city_id;

    List all payments with customer names who made them.
select s.first_name, s.last_name, ct.city, a.district, a.postal_code from staff as s join address as a on s.address_id=a.adress_id join city as ct on a.city_id=ct.city_id;



Intermediate Level

    Show film titles and their categories.
select f.title, c.name from film as f join film_category as fc on f.film_id=fc.film_id join category as c on fc.category_id=c.category_id;

    Display actor names with the number of films they have appeared in.
select a.first_name, a.last_name, count(fa.actor_id) from actor as a join film_actor as fa on a.actor_id=fa.actor_id group by a.first_name, a.last_name, fa.actor_id;

    Find customers who rented films from a specific store (store_id = 1).
select c.first_name, c.last_name from customer as c join store as s on c.store_id=s.store_id  where s.store_id=1;

    List all films rented in May 2005 with customer names.
select c.first_name, c.last_name, date(r.rental_date) from customer as c join rental as r on c.customer_id=r.customer_id where r.rental_date between '2005-05-01' and '2005-05-32';

    Show staff members who processed payments over $5.00.
select s.first_name from staff as s join payment as p on s.staff_id=p.staff_id where p.amount>4.99 group by s.first_name;
 

Advanced Level

    Find films rented more than 10 times with their rental counts.
select f.title,  count(r.rental_id) from film as f join inventory as i on f.film_id=i.film_id join rental as r on i.inventory_id=r.inventory_id group by f.title,  having count(r.rental_id)>10;
    
    Display customers who rented films from multiple categories.

    List actors who appeared in films from at least 3 different categories.
    Find films that were never rented but are in inventory.
    Show customers who rented the same film more than once.

Complex Queries

    Find the most popular film category based on rental count.
    Display customers who rented all films from a particular actor.
    List films that were rented on consecutive days by the same customer.

    Find actors who only appeared in R-rated films.
select a.first_name, a.last_name, f.film_id, f.rating from actor as a join film_actor as fa on a.actor_id=fa.actor_id join film as f on fa.film_id=f.film_id where f.rating='R';
    
    Show customers who rented from both stores (store_id 1 and 2).
select c.first_name, c.last_name, s.store_id from customer as c join store as s on c.store_id=s.store_id where s.store_id = 1 and s.store_id=2;

Business Scenarios

    Identify the top 5 customers by total spending.
    Find the most profitable film category.
    List staff members with their total processed payment amounts.
    Show films that are consistently rented every month.
    Find customers who have not rented in the last 6 months.

Challenging Problems

    Display customers who rented films from all categories.
    Find actors who have worked together in multiple films.
    List films with above-average rental rates but below-average replacement costs.
    Show customers whose rental frequency increased month-over-month.
    Find the longest gap between rentals for each customer.


--35 exercises lefttt at night before sleeping 
--20 exercises lefttt 3:02 in train