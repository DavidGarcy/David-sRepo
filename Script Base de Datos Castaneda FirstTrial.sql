create database PrestamosP1
use PrestamosP1

create table Client (
id_client int primary key not null,
clint_name varchar(20) not null,
client_lastn varchar(20) not null,
client_address varchar(70) not null,
client_phone varchar(15) not null,
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
interest_amount money not null,
change_type smallint not null )

create table Payments (
id_payment int primary key not null,
payment_amount money not null,
interest_amount money,
payment_date date not null,
payment_descrip varchar(150),
id_credit int foreign key references Credit (id_credit) not null )