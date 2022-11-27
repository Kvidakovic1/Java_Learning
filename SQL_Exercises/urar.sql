# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\urar.sql

drop database if exists urarSilvija;
create database urarSilvija;
use urarSilvija;

create table urar(
    sifra int not null primary key auto_increment,
    ime varchar(80),
    prezime varchar(80),
    oib char(11),
    iban varchar(80),
    segrt int
    );

create table segrt(
    sifra int not null primary key auto_increment,
    ime varchar(80),
    prezime varchar(80),
    oib char(11),
    iban varchar(80)
);   

create table sat(
    sifra int not null primary key auto_increment,
    marka varchar(50),
    modle varchar(50),
    godina_proizvodnje char(4)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(80),
    prezime varchar(80),
    broj_telefona varchar(60)
);

create table popravak(
    sat int,
    urar int,
    korisnik int,
    cijena decimal(18,2)
);

alter table urar add foreign key (segrt) references segrt(sifra);
alter table popravak add foreign key (sat) references sat(sifra);
alter table popravak add foreign key (urar) references urar(sifra);
alter table popravak add foreign key (korisnik) references korisnik(sifra);


