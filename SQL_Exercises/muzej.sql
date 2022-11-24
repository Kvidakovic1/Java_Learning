# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(80),
    iznos decimal(18,2)
    sponzor int,
    kustos int    
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    oib char(11),
    iban varchar(50)          
);

create table djelo(
    sifra int not null primary key auto_increment,
    autor varchar(40),
    vrijednost decimal(18,2),
    tehnika varchar(40),
    izlozba int    
);

create table sponzor(
    sifra int not null primary key auto_increment,
    naziv varchar(80)
             
);

create table izlozba_djelo(
    djelo int,
    izlozba int
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table djelo add foreign key (izlozba) references izlozba(sifra);

alter table izlozba_djelo add foreign key (izlozba) references izlozba(sifra);
alter table izlozba_djelo add foreign key (djelo) references djelo(sifra);


