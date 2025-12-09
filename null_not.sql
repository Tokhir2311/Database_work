/*      Select all customers whose email IS NULL.
        Select all customers whose email IS NOT NULL.
        Count how many films have a release_year IS NULL.
        Select all rentals where return_date IS NULL (i.e., not returned).
        Count rentals where return_date IS NOT NULL.
        Select all staff records where picture IS NULL.
    Select all payments where amount IS NULL (should return none — tests understanding).
        Find all addresses where address2 IS NULL.
        Count how many addresses have address2 filled (IS NOT NULL).
        Select all films where special_features IS NULL (to confirm if column allows NULL).
    easy View structure of customer table using \d customer; identify the primary key.
    View structure of film table; list all NOT NULL columns.
    View structure of rental table; identify which columns form the primary key.
    Attempt to insert a duplicate value into a primary key column (should fail).
    Attempt to insert a record missing a NOT NULL column (should fail).
    Identify which columns in customer table have DEFAULT values.
    View which column(s) in rental table are foreign keys (read only, not use them).
    Check if payment_id column in payment table is marked as PRIMARY KEY.
    Find which columns in film table have CHECK or DEFAULT constraints (e.g., rental_rate, rating).
    Inspect store table; identify its primary key and any unique constraints. */
select * from customer where email is null;
=
select * from customer where email is not null;
=
select count(*) from film where release_year is null;
=
select * from rental where return_date is null;
=
select * from staff where picture is null;
=
select * from address where address2 is null;
=
select count(*) from address where address2 is not null;
=
select * from film where special_features is null;
=

