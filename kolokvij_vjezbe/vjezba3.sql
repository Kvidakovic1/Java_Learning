# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\kolokvij_vjezbe\vjezba3.sql

drop database if exists vjezba3;
create database vjezba3;
use vjezba3;

create table svekar(
    sifra int not null primary key auto_increment,
    novcica decimal(16,8) not null,
    suknja varchar(44) not null,
    bojakose varchar(36),
    prstena int,
    narukvica int not null,
    cura int

);

create table cura(
    sifra int not null primary key auto_increment,
    dukserica varchar(49),
    maraka decimal(13,7),
    drugiputa datetime,
    majica varchar(49),
    novcica decimal(15,8),
    ogrlica int
);

create table brat(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    ogrlica int not null,
    ekstrovertno bit not null 
);

create table prijatelj_brat(
    sifra int not null primary key auto_increment,
    prijatelj int not null,
    brat int not null
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    kuna decimal(16,10),
    haljina varchar(37),
    lipa decimal(13,10),
    dukserica varchar(31),
    indiferentno bit not null
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    kuna decimal(17,5),
    lipa decimal(15,6),
    majica varchar(36),
    modelnaocala varchar(31) not null,
    prijatelj int
);

create table snasa(
    sifra int not null primary key auto_increment,
    introvertno bit,
    kuna decimal(15,6) not null,
    eura decimal(12,9) not null,
    treciputa datetime,
    ostavljena int not null
);

create table punica(
    sifra int not null primary key auto_increment,
    asocijalno int,
    kratkamajica varchar(44),
    kuna decimal(13,8) not null,
    vesta varchar(32) not null,
    snasa int
);

alter table svekar add foreign key (cura) references cura(sifra);
alter table prijatelj_brat add foreign key (brat) references brat(sifra);
alter table prijatelj_brat add foreign key (prijatelj) references prijatelj(sifra);
alter table ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table snasa add foreign key (ostavljena) references ostavljena(sifra);
alter table punica add foreign key (snasa) references snasa(sifra);


insert into brat(ogrlica, ekstrovertno)
values(13,1),(10,1),(11,0);

insert into prijatelj(indiferentno)
values(1),(1),(0);

insert into prijatelj_brat (prijatelj, brat)
values(1,1),(2,2),(1,2);

insert into ostavljena(modelnaocala)
values('okrugle'),('plave'),('cetvrtaste');

insert into snasa(kuna,eura,ostavljena)
values(14.5,2.1,1),(21.2,3.3,2),(40.2,4.3,1);

insert into cura(ogrlica)
values(1),(2),(3);

insert into svekar(novcica,suknja,narukvica,cura)
values(10.2,'plava',6,1),(15.2,'zelena',6,2),(14.2,'crna',6,3);

update svekar set suknja='Osijek';

delete from punica where kratkamajica = 'AB';

select majica from ostavljena 
where lipa!=9 and 
lipa!=10 and 
lipa!=20 and 
lipa!=30 and
lipa!=35;

select  a.ekstrovertno , f.vesta , e.kuna 
from  brat a
inner join prijatelj_brat b on a.sifra =b.brat 
inner join prijatelj c on c.sifra =b.prijatelj 
inner join ostavljena d on d.prijatelj=d.sifra 
inner join snasa e on d.sifra=e.ostavljena 
inner join punica f on f.snasa=e.sifra 
where 
d.lipa !=91 and c.haljina like '%ba%'
order by e.kuna desc ;


select a.haljina, a.lipa 
from prijatelj a 
left join prijatelj_brat b on a.sifra=b.brat 
where b.sifra is null 