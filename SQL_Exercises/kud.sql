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
