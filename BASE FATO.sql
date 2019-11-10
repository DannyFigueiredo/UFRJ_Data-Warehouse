show databases;
use sakila;
show tables;



select * from actor;
select * from actor_info;
select * from address;
select * from category;
select * from city;
select * from country;
select * from customer;
select * from customer_list;
select * from film;
select * from film_actor;
select * from film_category;
select * from film_list;
select * from film_text;
select * from inventory;
select * from language;
select * from nicer_but_slower_film_list;
select * from payment;
select * from rental;
select * from sales_by_film_category;
select * from sales_by_store;
select * from staff;
select * from staff_list;
select * from store;



select *
from customer cust, customer_list lis
where cust.customer_id = lis.id;



select * from film;
select * from language;
select * from film_list;



select * 
from film f, language l, film_list fl
where f.language_id = l.language_id and f.film_id = fl.fid;


-- Schema Sakila Dw
-- Dimensões: Filme, Loja, Cliente, Data, Funcionario, linguagem

create table Date(
	Data_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY(Data_id)
    
);

CREATE TABLE FILM(
	FILM_ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    TITLE varchar(255),
    DESCRIPTION VARCHAR(255),
    RELEASE_YEAR varchar(10),
    RENTAL_DURATION INT,
    RENTAL_RATE DOUBLE,
    
    CATEGORIA varchar(255),
    ORIGINAL_LANGUAGE VARCHAR(255),
    DUBBING VARCHAR(255)
    PRIMARY KEY(FILM_ID)
);

CREATE TABLE CUSTUMER(
	CUSTUMER_ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    FULL_NAME varchar(255),
    EMAIL VARCHAR(255),
    STATUS_ACTIVE INT,
    CREATED_DATE DATE,
    LAST_UPDATE DATE,
    ADRESS VARCHAR(255),
    ZIP_CODE INT,
    PHONE INT,
    CITY varchar(255),
    COUNTRY varchar(255),
    PRIMARY KEY(CUSTUMER_ID)
);