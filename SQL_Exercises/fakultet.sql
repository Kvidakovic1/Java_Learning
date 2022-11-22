# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\fakultet.sql


drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    status varchar(10)
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    broj_ects int
);

create table rok(
    sifra int not null primary key auto_increment,
    student int,
    kolegij int
);

alter table rok add foreign key (student) references student(sifra);
alter table rok add foreign key (kolegij) references kolegij(sifra);

