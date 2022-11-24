# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(80),
    iznos decimal(18,2),
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
    tehnika varchar(40)        
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


alter table izlozba_djelo add foreign key (izlozba) references izlozba(sifra);
alter table izlozba_djelo add foreign key (djelo) references djelo(sifra);


insert into djelo(sifra, autor, vrijednost,tehnika)
values(null,'Rembrandt',3000.00,'Ulje na platnu'),
(null,'Piccaso',10000.00,'Ugljen'),
(null,'Michelangelo',1500.00,'Kiparstvo');

insert into kustos(sifra,ime,prezime,oib,iban)
values(null,'Pero','Peric','16997088998', 'NL34INGB5558975318'),
(null,'Ivo','Ivic', '95277199584','FI3262884784395579');


insert into sponzor(sifra,naziv)
values(null,'Red bull'),
(null,'Ina'),
(null,'Samsung');


insert into izlozba (sifra,naziv,iznos,sponzor,kustos)
values(null,'Klasicna umjetnost', 100000.00,1,2),
(null,'Klovicevi dani', 100000.00,1,1);


insert into izlozba_djelo (djelo,izlozba)
values(1,2),(1,1);





