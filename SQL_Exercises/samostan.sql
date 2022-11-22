# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    nadredeni int
);

create table posao(
    sifra int not null primary key auto_increment,
    vrsta varchar(40),
    trajanje time
);

create table sluzba(
    posao int,
    svecenik int
);

alter table svecenik add foreign key (nadredeni) references svecenik(sifra);
alter table sluzba add foreign key (posao) references posao(sifra);
alter table sluzba add foreign key (svecenik) references svecenik(sifra);