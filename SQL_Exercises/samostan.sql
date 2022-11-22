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


insert into svecenik(sifra,ime,prezime,oib)
values(null,'Petar','Jerko','97694851307'),
(null,'Ivan','Pernar','61548691432'),
(null,'Marko','Molnar','74195667022');

insert into posao(sifra,vrsta,trajanje)
values(null,'Posvecivanje hostija','00:15:00'),
(null,'Ciscenje crkve','01:00:00');

insert into sluzba(posao,svecenik)
values(1,1),(1,2),(2,1),(2,2);