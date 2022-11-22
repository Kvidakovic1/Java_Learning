# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\kud.sql

drop database if exists kud;
create database kud;
use kud;

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(80),
    zupanija varchar(80),
    postanski_broj varchar(10)
);

create table clan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

create table nastup(
    sifra int not null primary key auto_increment,
    mjesto int,
    vrijeme datetime,
    max_gledatelja int
);

create table clan_nastup(
    clan int,
    nastup int
);


alter table nastup add foreign key (mjesto) references mjesto(sifra);
alter table clan_nastup add foreign key (clan) references clan(sifra);
alter table clan_nastup add foreign key (nastup) references nastup(sifra);

insert into mjesto(sifra,naziv,zupanija,postanski_broj)
values(null,'Tiborjanci','Osjecko Baranjska', '31554'),
(null,'Osijek','Osjecko Baranjska','31551'),
(null,'Virovitica', 'Viroviticko Podravska', '34213');

insert into clan(sifra, ime, prezime, oib)
values(null,'Ankica','Pervan', '74259823585'),
(null,'Branka','Kukec','31339135593'),
(null,'Ivo','Podboj','38322842246');


insert into nastup(sifra,mjesto,vrijeme,max_gledatelja)
values(null,1,'2022-12-23 20:00:00', 500),
(null, 2, '2022-12-31 19:00:00', 1500),
(null, 3,  '2023-01-10 16:00:00', 1000);


insert into clan_nastup(clan,nastup)
values(1,1),(2,1),(3,1);