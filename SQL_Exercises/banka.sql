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

create table djelatnik(
    sifra_djelatnika int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    sifra_poslovnice int
);

create table djelatnik_povijest(
    sifra_djelatnika int,
    ime varchar(30),
    prezime varchar(30),
    sifra_poslovnice int,
    vrijedi_od datetime,
    vrijedi_do datetime
);

alter table racuni_ugovori add foreign key (sifra_klijenta) references klijent(sifra_klijenta);
alter table racuni_ugovori add foreign key (sifra_djelatnika) references djelatnik(sifra_djelatnika);
alter table djelatnik add foreign key (sifra_poslovnice) references poslovnica(sifra_poslovnice);
alter table djelatnik_povijest add foreign key (sifra_poslovnice) references poslovnica(sifra_poslovnice);
