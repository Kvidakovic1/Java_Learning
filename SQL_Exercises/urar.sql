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
    model varchar(50),
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


insert into segrt(ime,prezime,oib,iban)
values('Patrik','Soldo','58550493833','HR4823600005947752386'),
('Petar','Jerko','62343737369','HR9325000099466634137'),
('Silvio','Marek','84448349990','HR6424020062956756659');


insert  into korisnik(ime,prezime,broj_telefona)
values('Karlo','Vojtek','+385 97 511 4208'),
('Viktor','Larsen','+385 97 577 0002'),
('Ana','Lantin','+385 97 577 4831');


insert into sat(marka, model,godina_proizvodnje)
values('Casio','DW-6900','2020'),
('Rolex','Air-King','2022'),
('Tissot','PRX','1999');


insert into urar(ime,prezime,oib,iban,segrt)
values('Ivo','Kruljac','86743540078','HR6823600009119234829',1),
('Mihael','Pralik','86743540078','HR6225000099243658952',null);


insert into popravak(sat,urar,korisnik,cijena)
values(1,1,1,499.99),
(2,2,2,1090.99);