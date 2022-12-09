# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\Funkcije_procedure_vjezbe\primjer1.sql

drop database if exists primjer1;
create database primjer1;
use primjer1;

create table sestra(
    id int not null primary key auto_increment,
    introvertno boolean not null,
    carape varchar(41),
    suknja varchar(40),
    narukvica int not null
);

create table punac(
    id int not null primary key auto_increment,
    modelnaocala varchar(39),
    treciputa datetime,
    drugiputa datetime,
    novcica decimal(14,6) not null,
    narukvica int
);

create table zarucnica(
    id int not null primary key auto_increment,
    stilfrizura varchar(40),
    prstena int not null,
    gustoca decimal(14,5),
    modelnaocala varchar(35) not null,
    nausnica int
);

create table muskarac(
    id int not null primary key auto_increment,
    marka decimal(17,7) not null,
    hlace varchar(45) not null,
    prstena int not null,
    nausnica int,
    neprijateljica int
);

create table neprijateljica(
    id int not null primary key auto_increment,
    indiferentno boolean not null,
    modelnaocala varchar(39) not null,
    maraka decimal(12,10) not null,
    kratkamajica varchar(32) not null,
    ogrlica int    
);

alter table muskarac add foreign key (neprijateljica) references neprijateljica(id);