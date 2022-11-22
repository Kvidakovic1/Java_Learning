# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\SQL_Exercises\fakultet.sql


drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(30),
    prezime varchar(30),
    oib char(11),
    status varchar(10)
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    broj_ects int
);

create table rok(
    sifra int not null primary key auto_increment,
    datum datetime,
    max_studenata int,
    kolegij int
);

create table student_rok(
    rok int,
    student int
);



alter table rok add foreign key (kolegij) references kolegij(sifra);
alter table student_rok add foreign key (rok) references rok(sifra);
alter table student_rok add foreign key (student) references student(sifra);


insert into kolegij(sifra,naziv,broj_ects)
values(null,'Osnove elektronike', 12),
(null,'Matematika 1', 10),
(null,'Programiranje 1',10);

insert into student(sifra, ime, prezime,oib,status)
values(null,'Josip','Duzel','11997157298', 'redovan'),
(null,'Ivor','Kakuk','52278198071','izvanredan'),
(null, 'Franjo','Sučić','36398442827','redovan');

insert into rok(sifra, datum,max_studenata,kolegij)
values(null,'2022-11-22 16:00:00',20,1),
(null,'2022-12-20 16:00:00',20,1);

insert into student_rok(rok,student)
values(1,1),(1,2);
