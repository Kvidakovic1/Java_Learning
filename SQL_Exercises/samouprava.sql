# c:\xampp\mysql\bin\mysql -uroot < E:\Java\Java_Learning\samouprava.sql


drop database if exists samouprava;
create database samouprava;
use samouprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(80),
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(80),
    prezime varchar(80)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int, 
    naziv varchar(80)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(80)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);


