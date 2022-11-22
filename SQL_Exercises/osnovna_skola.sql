# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\osnovna_skola.sql

drop database if exists osnovna_skola;
create database osnovna_skola;
use osnovna_skola;

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    starost int
);

create table  uciteljica(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    email varchar(50)
);

create table radionica(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    datumpocetka datetime,
    max_djece int,
    uciteljica int
);

create table radionica_dijete(
    radionica int, 
    dijete int
);

alter table radionica add foreign key (uciteljica) references uciteljica(sifra);
alter table radionica_dijete add foreign key(radionica) references radionica(sifra);
alter table radionica_dijete add foreign key(dijete) references dijete(sifra);


insert into dijete(sifra,ime,prezime,oib,starost)
values(null,'Klara','Greman','98761132104', 7),
(null,'Patrik','Blazević','99020828277', 8),
(null,'Jasmina','Ronta','71655029395', 9);

insert into uciteljica (sifra,ime,prezime,oib,email)
values(null,'Tanja','Vedernjak','61690165112','tanjavedernjak@gmail.com'),
(null,'Lucija', 'Begonja', '07317766831', 'lbegonja@hotmail.com');


insert into radionica_dijete (radionica,dijete)
values(1,1),(1,2),(1,3);