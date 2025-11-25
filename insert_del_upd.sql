/*  Insert a new customer named Ali Karimov living in the same city as Mary Smith.
    Add a new film titled "THE UNKNOWN ENGINEER" with length 120 and rental rate 3.99.
    Insert a new record into the rental table where customer_id = 5 rents inventory_id = 10 today.
    Duplicate the address of Store 1 for a new staff member named John White.
    Insert 3 new actors: Aisha Khan, Omar Malik, and Layla Noor.
    Add a new category called “Machine Learning” to the category table.
        Add a new film in the Machine Learning category with rating PG-13.
    Insert a new staff record that uses the same store as Mike Hillyer but a different email.
    Insert a payment record for customer_id = 8 for an amount of 5.99 with today’s date.
    Insert a new language “Uzbek” into the language table. */


insert into customer (store_id,first_name, last_name, address_id) 
values (1, 'Ali', 'Karimov', 5);
=
insert into film (title, length, rental_rate, language_id) values('THE UNKNOWN ENGINEER', 120, 3.99, 1);
=
insert into rental(customer_id, inventory_id, rental_date, staff_id) 
values (5, 10, '2025-01-01 13:00:00.000Z', 1);
=
insert into staff (first_name, last_name, address_id, store_id, username) values ('John', 'White', 1,1, 'john_okeng');
=
insert into film (title, rating, language_id) values( 'Avengers', 'PG-13', 1);
=
insert into staff (first_name, last_name,store_id, email, address_id, username) values ('Eshmat', 'toga',1, 'anymail@gm.com', 1,'eshmatiy');
=


==================updateeeeee
/* 
    Update Ali Karimov’s email address in the customer table.
    Increase all rental_rate values in the film table by 1.00 where the length > 150.
    Change the Machine Learning category name to “Artificial Intelligence”.
    Set active = false for customers who haven’t rented anything in the last 365 days.
    Update all films longer than 180 minutes to have a special_feature of 'Deleted Scenes'.
    Reduce all payments greater than 10.00 by 10%.
    Set the last_update column of all rows in inventory to the current timestamp.
    Assign store_id = 2 to all staff who currently belong to store 1.
    Update the rating of all films containing “LOVE” in their title to PG.
    Change Omar Malik’s last name to Malyk.
*/
update customer set email='alikarimov@gmail.com' where customer_id = 600;
=
update film set rental_rate = rental_rate + 1.00 where length > 150;
=
update category set name='Artifical Intelegence' where category_id = 17;
=
update custmer set active = false where 
=
update customer set activebool = false where last_update <'2024-02-15 04:57:20'; 
=
--update film set special_features = 'Deleted Scenes' where length < 180;
=
update inventory set last_update = '2025-01-01 13:00:00.000Z' ;
=
update staff set store_id = 2 where store_id = 1;
=
update film set rating = 'PG' where title like '%LOVE%';
=
