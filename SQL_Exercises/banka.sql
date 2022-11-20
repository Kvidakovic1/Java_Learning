# c:\xampp\mysql\bin\mysql -uroot < E:\Java\Java_Learning\SQL_Exercises\banka.sql
drop database if exists banka;
create database banka;
use banka;

create table klijent(
    sifra_klijenta int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30)
);

create table poslovnica(
    sifra_poslovnice int not null primary key auto_increment,
    adresa varchar(30)
);

create table racuni_ugovori(
    sifra_ugovora int not null primary key auto_increment,
    broj_racuna varchar(100) unique,
    sifra_klijenta int,
    sifra_djelatnika int,
    datum_otvaranja_racuna datetime,
    datum_zatvaranja_racuna datetime
);