create database Sinsay;
CREATE TABLE clients (
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL
);

alter table clients add column age int;

alter table clients drop column age; 


desc clients;

alter table clients modify firstName char(25) not null;
alter table clients modify lastName char(25) not null;

alter table clients change LastName clientsLastName char(25) not null;

alter table clients rename to sinsayclient;


rename table sinsayclient to clients;
alter table clients change clientsLastName lastName varchar(25);
alter table clients add column dateOfBirth date;

insert into clients (firstName,lastName,dateOfBirth)
values ('Dorina','Puscas','1999-05-08'),('Andreea' ,'Bulimar', '1980-01-31'), ('Geanina' , 'Tudor', '1954-07-28'), ('Roxana' ,'Palint','2002-05-06'),('Iulia','Scafaru','1999-04-09'),('Antonio','Ilincari','1944-01-02'),('Estera','Biris','2007-03-22'),('David','Sucioni','1987-07-03'),('Dan','Popescu','2000-01-09'),('Marinel','Varga','2000-04-15');

select * from clients;

update clients set firstName ='James';

select * from clients;

delete  from clients;

select * from clients;

truncate table clients;
select * from clients;

select firstName,lastName from clients;
select firstName,dateOfBirth from clients;


insert into clients (firstName,lastName,dateOfBirth,age)
values('Dorina','Puscas','1999-05-08',23),('Andreea' ,'Bulimar', '1980-01-31',44), ('Geanina' , 'Tudor', '1954-07-28',70), ('Roxana' ,'Palint','2002-05-06',21),('Iulia','Scafaru','1999-04-09',23),('Antonio','Ilincari','1944-01-02',80),('Estera','Biris','2007-03-22',16),('David','Sucioni','1987-07-03',60),('Dan','Popescu','2000-01-09',23),('Marinel','Varga','2000-04-15',23);

select * from clients where dateOfBirth>'1970-12-01';

select * from clients where age =23;
select * from clients where age<=23;

select * from clients where firstName like '%o';

select  * from clients where firstName like '%a'
 or dateOfBirth like '200%';
 
 select  * from clients where firstName like '%a'
 and dateOfBirth like '200%';
 
 select sum(age)  from clients;
 select avg(age)  from clients;
 select min(age)  from clients;
  select count(*)  from clients;
  
  
 alter table clients add column clientid int primary key auto_increment;
 desc clients;
 alter table clients modify column clientid int auto_increment first;
 insert into clients(firstname,lastname,dateOfBirth,age) values('Marinel','Varga','2000-04-15',23);
 select* from clients;
 
 create table products (
 productid int not null auto_increment,
 race varchar(45) not null,
 dateOfBirth date not null,
 clientid int not null,
 primary key (productid),
 constraint fk_product_clients foreign key(clientid) references clients(clientid)
 );
 
 
 
 
 
 
 
 
DDL-set de instructiuni care ne ajuta sa gestionam structura bazei de date.
DML-set de instructiuni care ne ajuta sa inseram informatii in baza de date.
DQL-set de instructiuni care ne ajuta sa scoatem informatii din baza de date.
 