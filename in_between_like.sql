    /*  Select all films where rating IN ('PG', 'PG-13').
        Select all films where rental_rate IN (0.99, 2.99, 4.99).
        Select films whose length BETWEEN 90 AND 120 minutes.
        Select films with replacement_cost BETWEEN 15 AND 20.
        Select films whose title LIKE 'A%'.
        Select films whose title LIKE '%Love%'.
        Select films whose title LIKE '%Man%'.
        Select films whose title LIKE '_A%'.
        Select films whose description ILIKE '%adventure%'.
        Select films whose description ILIKE '%police%' AND rating = 'R'.
        Select customers whose first_name LIKE 'A%'.
        Select customers whose last_name LIKE '%son'.
        Select customers whose first_name ILIKE 'm%'.
        Select customers whose email LIKE '%@sakilacustomer.org'.
        Select customers whose create_date BETWEEN '2006-01-01' AND '2006-06-30'.
        Select customers whose store_id IN (1, 2).
        Select customers whose last_name ILIKE '%LL%'.
        Select customers whose first_name LIKE 'J%' AND active = 1.
        Select customers whose email ILIKE '%example%'.
        Select customers whose first_name IN ('MARY', 'PATRICIA', 'LINDA').
        Select payments whose amount BETWEEN 5 AND 8.
        Select payments whose payment_date BETWEEN '2005-07-01' AND '2005-07-15'.
        Select payments whose amount IN (0.99, 2.99, 4.99).
        Select payments where amount NOT IN (0.99, 2.99).
        Select payments whose payment_date::text LIKE '2005-07%'.
        Select payments whose amount BETWEEN 8 AND 10 AND staff_id = 1.
        Select payments whose payment_date BETWEEN '2005-06-01' AND '2005-06-30' AND amount > 5.
        Select payments where customer_id IN (1, 2, 3, 4, 5).
        Select payments whose amount BETWEEN 1 AND 3 OR amount BETWEEN 8 AND 10.
        Select payments whose payment_date::text ILIKE '%2005-07-3%' */

select * from film where rating in ('PG', 'PG-13');
=
select * from film where rental_rate in (0.99, 2.99, 4.99)
=
select * from film where length between 90 and 120;
=
select * from film where replacement_cost between 15 and 20;
=
select * from film where title like'A%' -- a dan boshlanishini tekshiradi
=
select * from film where title like '%Love%' -- film nomida love borlarini oladi
=
select * from film where title like '%Man%' -- film nomida MAn qatnashganlarini oladi
=
select * from film where ttile like '_A%'; -- film title ida 2 chi harfi katta a ;larni oladi
=
select * from film where description ilike '%adventure%'; -- filmni descriptionidagi adventure qatnashganlarni oladi, not case sensetive
=
select * from film where description '%police%' and rating = 'R'; -- ham police qatnashgan ham rating R 
=
select * from customer where first_name like 'A%';
=
select * from customer where last_name like '%son';
=
select * from customer where email like '%@sakilacustomer.org';
=
select * from customer where  create_date between '2006-01-01' and '2006-06-30';
=
select * from customer where store_id in (1, 2);
=
select * from customer where last_name ilike '%LL%' --familyasida 2 ta ll yonma-yon kelgan
=
select * from customer where first_name like 'J%' and active = 1;
=
select * from customer where email ilike '%example%';
=
select * from customer where first_name in ('MARY', 'PATRICIA', 'LINDA');
=
select * from payment where amount between 5 and 8;
=
select * from payment where payment date between '2005-01-07' and '2005-01-15';
=
select * from payment where amount in (0.99, 2.99, 4.99);
=
select * from payment where amount nit in (0.99, 2.99);
=
select * from payment where paymnet_date::text like '2005-07%';
=
select * from payment where amount between 8 and 10 and staff_id = 1;
=
select * from payment where payment_date between '2005-06-01' and '2005-06-30' and amount > 5;
=
select * from payment where customer_id in (1, 2, 3, 4, 5);
=
select * from payment where amount between 1 and 3 or amount between 8 and 10;  -- 2  tpmonda ham and li ishoralar bo'lsa ya`ni between bilan 3 dan ko`p qiymat berilgan bo'lsa ikkala tomonga ham column_name va between(keyword expression) qo'yilishi kerak.
=
select * from payment where payment_date::text ilike '%2005-07-3%';