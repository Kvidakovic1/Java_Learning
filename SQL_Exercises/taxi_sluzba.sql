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


insert into putnik(sifra, ime,prezime,oib,broj_telefona)
values(null,'Luka','Habus','30529884741', '+1 208-969-9037'),
(null,'Marko','Huljak','30772240538','+376 539 569'),
(null,'Filip','Begic','80481548717','+376 345 880');


insert into vozac(sifra,ime,prezime,oib,broj_telefona)
values(null,'Dominik','Perokovic','10711478243','+54 9 3327 45-1377'),
(null,'Marin','Mijakic','26360930301','+54 9 2966 31-7638');


insert into vozilo(sifra, marka,model, godina_proizvodnje,vozac)
values(null,'Suzuki','Swift','2015',2),
values(null,'Opel','Corsa','2010','1');

insert into voznja(putnik,vozilo)
values(2,1),(1,1),(1,2);