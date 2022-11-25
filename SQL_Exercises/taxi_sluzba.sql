# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\taxi_sluzba.sql
drop database if exists taxi_sluzba;
create database taxi_sluzba;
use taxi_sluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    marka varchar(30),
    model varchar(30),
    godina_proizvodnje int,
    vozac int
);

create table vozac(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    broj_telefona varchar(15)
    );

create table putnik(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    broj_telefona varchar(15)
);

create table voznja(
    putnik int,
    vozilo int
);

alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);
alter table voznja add foreign key (vozilo) references vozilo(sifra);
