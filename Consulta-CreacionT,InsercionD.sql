create database PrestamosP1
use PrestamosP1

create table Client (
id_client int primary key not null,
client_name varchar(20) not null,
client_lastn varchar(20) not null,
client_address varchar(70) not null,
client_phone varchar(15) not null,
client_email varchar(50) not null,
admission_date date,
client_RFC varchar(50) )

create table Credit (
id_credit int primary key not null,
id_client int foreign key references Client (id_client) not null,
credit_app_date date not null,
amount money not null,
remaining money not null,
positive_balance money not null,
interest_rate decimal not null,
interest_amount money not null )

create table Payments (
id_payment int primary key not null,
payment_amount money not null,
interest_amount money,
payment_date date not null,
payment_descrip varchar(150),
id_credit int foreign key references Credit (id_credit) not null )

/*insert into Client values (2522,'David','Garcia','Calle Alvaro Obregon Sin Numero, Col Hermanas Coah.','8665412325','davidgarcua4545@gmail.com','23/08/2002','DAVGG1211956867ESCHCC')
insert into Client values (2523,'Daniel','Salazar','Calle I. Madero Reforma No. 2 con Av. Los Angeles 536','8554121232','danisalaz1232@gmail.com','23/08/2002','DANSS281295CALLM55')*/

/*insert into Credit values (1022,2522,'02/05/2005',5500.00,5500.00,0.00,6,300.00)
insert into Credit values (1023,2522,'15/08/2006',2800.00,2800.00,0.00,7,196.00)
insert into Credit values (1024,2523,'18/05/2007',8700.00,8700.00,0.00,8,696.00)
insert into Credit values (1025,2523,'03/12/2008',10500.00,10500.00,0.00,14,1470.00)*/


