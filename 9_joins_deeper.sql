/*   Retrieve all customers and their rental information, if available.
     List all actors and the films they have acted in, if any.
     ----agg berish kerak shekilli --------- Display all categories and the films associated with each category, if available.
    -----Get a list of employees and their respective stores, if assigned.
     Retrieve a list of customers and their payments, if any.
    ------Show all films and their rental durations, if available.
     Retrieve all stores and the employees who work at each store, if any.
     List all films and the number of times they have been rented, if any.
     Display all customers and their rental history.
     List all customers and the payments they made in the last 30 days.
     Retrieve all actors and the films they have acted in, including those who have not acted in any film.
     Get a list of films and their rental prices, if available.
     Show a list of customers and the stores they are associated with, if any.
     Display all films and their rental rates, including those without rentals.
     List3 all films and the amount paid by customers who rented them.
    ----Retrieve all films and the actors who starred in them, even if no actor is associated with the film.
     Get a list of all customers and the staff members who served them, if applicable.
     1 bn birxil Show a list of all rentals and the corresponding customer information, if available.
     List all stores and the total payments made by customers at each store, if applicable.
     Retrieve all films and the payments made by customers who rented them, if any.

20 RIGHT JOIN Exercises (Progressive)

    Retrieve all payments and the customer details associated with each payment.
    List all actors and the films they have acted in, even if no actor is available.
    Get a list of films and their categories, including films that do not belong to a category.
    Show all rentals and the customer who rented each film, including rentals with no customer.
    Retrieve all rental payments and their corresponding rental details, including payments with no rentals.
    Display a list of all films and the actors who starred in them, including films with no actors.
    Get a list of all films and the store details associated with each rental.
    Retrieve all payments and the employees who processed those payments.
    Show all customers and their rental history, even for customers with no rentals.
    List all categories and the films associated with each category, even if a category has no films.
    Retrieve all payments and the rental information tied to each payment.
    List all rentals and the films that were rented, even for rentals with no films.
    Show a list of customers and the employees who served them, including customers with no employee assignment.
    Display all films and their rental rates, including films with no rentals.
    Retrieve all rentals and the films associated with each rental, including rentals with no films.
    List all stores and the customers who have rented films from them, even stores with no customers.
    Retrieve all actors and the films they have been in, even if no film is associated with the actor.
    Show a list of all payments and their related customer and rental details, including payments with no rental or customer.
    List all customers and the payments they have made, including those who have made no payments.
    Retrieve all films and the categories they belong to, even if a film has no category.*/

--ANSWERS
select r.rental_id, r.rental_date, r.return_date , c.first_name, c.last_name from rental as r left join customer as c on r.customer
_id = c.customer_id;

select a.first_name , a.last_name, fa.title from actor as a left join film_actor as f on a.actor_id = f.actor_id inner join film as fa on f.film_id=fa.film_id group by a.first_name, a.last_name, fa.title order by fa.title;

select s.store_id,st.staff_id, st.first_name from store as s left join staff as st on s.store_i
d=st.store_id;

select f.title ,count(r.rental_id) from film as f full join inventory as i on f.film_id=i.film_id left join rental as r on i.inventory_id = r.inventory_id group by f.title order by count(r.rental_id);

select c.first_name, r.rental_id,  r.rental_date, r.return_date from customer as c left join rental as r on c.customer_id = r.customer_id where r.rental_date between '2005-11-01' and '2005-12-01' ;

select a.first_name, a.last_name , f.title from actor as a full join film_actor as fa on a.acto
r_id = fa.actor_id left join film as f on fa.film_id = f.film_id order by a.first_name;

select f.title , fl.price from film as f left join film_list as fl on f.film_id = fl.fid order by fl.price;

select c.first_name , s.store_id from customer as c inner join store as s on c.store_id=s.store_id;

select count(title) from film where rental_rate is not null or null;

select f.title , sum(p.amount) from film as f join inventory as i on f.film_id=i.film_id join r
ental as r on i.inventory_id = r.inventory_id join payment as p on r.customer_id = p.customer_id group by f.title;

select store, total_sales from sales_by_store;




