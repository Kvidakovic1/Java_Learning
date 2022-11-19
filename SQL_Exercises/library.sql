# c:\xampp\mysql\bin\mysql -uroot < E:\Java\Java_Learning\SQL_Exercises\library.sql

drop database if exists library;
create database library;
use library;

create table member(
    card_no int not null primary key auto_increment,
    surname varchar(15),
    name varchar(15),
    adress varchar(150),
    gender varchar(1),
    phone_no varchar(15)
);

create table employee(
    emp_id int not null primary key auto_increment,
    surname varchar(15),
    name varchar(15),
    birthday_date datetime
);

create table publisher(
    pub_id int not null primary key auto_increment,
    name varchar(80),
    city varchar(50),
    phone_no varchar(15)
);

create table book(
    book_id int not null primary key auto_increment,
    publisher int,
    type varchar (20),
    price decimal(18,2),
    title char(80) not null
);

create table book_loans(
    loan_id int not null primary key auto_increment,
    member int,
    book int,
    employee int,
    date_out datetime,
    due_date datetime
);

alter table book_loans add foreign key (member) references member(card_no);
alter table book_loans add foreign key (book) references book(book_id);
alter table book_loans add foreign key (employee) references employee(emp_id);
alter table book add foreign key (publisher) references publisher(pub_id);


