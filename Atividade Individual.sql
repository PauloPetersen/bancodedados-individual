--Exercicios dvdrental
--1 - Selecionar todos os atores;
--2 - Selecionar todos os atores com primeiro nome igual a Christian;
--3 - Listar apenas o nome e sobrenome dos atores com a inicial D;
--4 - Listar os 10 primeiros atores.
--Aplicar essa mesma dinâmica de perguntas em cada tabela pertecente ao banco de dados dvdrental.
_____________________________________________________________________________________________________

--Tabela "actor"

select * from actor;
select * from actor where first_name = 'Christian';
select * from actor where first_name like 'D%' and last_name like 'D%';
select * from actor where actor_id between 1 and 10;
select * from actor limit 10;
_______________________________________________________________________

--Tabela "address"

select * from address;
select * from address where address = '435 0 Way';
select * from address where address like '1%' and district like 'H%';
select * from address where address_id between 1 and 10;
select * from address limit 10;
_______________________________________________________________________

--Tabela "category"

select * from category;
select * from category where name = 'Animation';
select * from category where category_id = '10' and name like 'Games';
select * from category where category_id between 1 and 10;
select * from category limit 10;
_______________________________________________________________________

--Tabela "city"

select * from city;
select * from city where city = 'Carmen';
select * from city where city like 'B%' and country_id = 44;
select * from city where city_id between 1 and 10;
select * from city limit 10;
________________________________________________________________________

--Tabela "country"

select * from country;
select * from country where country = 'Spain';
select * from country where country like 'S%' and country_id = 87;
select * from country where country_id between 1 and 10;
select * from country limit 10;
________________________________________________________________________

--Tabela "customer"

select * from customer;
select * from customer where first_name = 'Paul';
select * from customer where first_name like 'J%' and last_name like 'G%';
select * from customer where customer_id between 1 and 10;
select * from customer limit 10;
________________________________________________________________________

--Tabela "film"

select * from film;
select * from film where title = 'Haunting Pianist';
select * from film where title like 'A%' and release_year = 2006;
select * from film where film_id between 1 and 10;
select * from film limit 10;
________________________________________________________________________

--Tabela "film_actor"

select * from film_actor;
select * from film_actor where actor_id = 1;
select * from film_actor where actor_id = 1 and film_id = 1;
select 
    a.first_name , fi.title 
from
    film_actor f
inner join 
    actor a
on
    f.actor_id = a.actor_id
inner join 
    film fi 
on
    f.film_id = fi.film_id
group by 
    a.first_name , fi.title;
   select * from film_actor where film_id between 1 and 10;
select * from film_actor limit 10;
________________________________________________________________________

--Tabela "film_category"

select * from film_category;
select * from film_category where category_id = 12;
select * from film_category where film_id <= 284 and category_id = 12;
select
	c.name , fi.title
from
	film_category fc
inner join
	film fi
on
	fc.film_id  = fi.film_id 
inner join
	category c
on
	fc.category_id = c.category_id
group by
	c.name , fi.title;
select * from film_category where film_id between 1 and 10;
select * from film_category limit 10;
________________________________________________________________________

--Tabela "inventory"

select * from inventory;
select * from inventory where store_id = 2;
select * from inventory where store_id = 2 and film_id = 2;
select
	r.rental_date
from
	inventory i
inner join
	rental r
on
	i.inventory_id = r.inventory_id  
group by
	r.rental_date 
limit 
	10;
select * from inventory where inventory_id between 1 and 10;
select * from inventory limit 10;
________________________________________________________________________

--Tabela "language"

select * from language;
select * from language where name = 'Mandarin';
select * from language where language_id = 2 and name like 'I%';
select * from language where language_id between 1 and 10;
select * from language limit 10;
________________________________________________________________________

--Tabela "payment"

select * from payment;
select * from payment where amount = 7.99;
select * from payment where amount = 7.99 and rental_id <= 1500;
select * from payment where payment_id between 17503 and 17512;
select * from payment limit 10;
_________________________________________________________________________

--Tabela "rental" (recomeçar daqui)

select * from rental;
select rental_date from rental where rental_date >= '2005-05-24';
select * from rental where rental_date >= '2005-05-24' and last_update >= '2006-02-17'; 
select * from rental where renal_id between 1 and 10;
select * from rental limit 10;
_________________________________________________________________________

--Tabela "staff"

select * from staff;
select * from staff where first_name = 'Mike';
select * from staff where first_name like 'M%' and last_name like 'H%';
select * from staff where staff_id between 1 and 10;
_________________________________________________________________________

--Tabela "store"

select * from store;
select * from store where manager_staff_id = 1;
select * from store where manager_staff_id >=1 and address_id >=1;
select
	sta.first_name , sta.last_name 
from
	staff sta
inner join
	store sto
on
	sta.staff_id = sto.manager_staff_id 
group by
	sta.first_name, sta.last_name;
select * from store where store_id between 1 and 10;
select * from store limit 10;

