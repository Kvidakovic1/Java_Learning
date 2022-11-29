# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\kolokvij_vjezbe\vjezba1.sql

drop database if exists vjezba1;
create database vjezba1;
use vjezba1;

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lika decimal(13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno bit,
    ekstrovertno bit not null,
    dukserica varchar(48) not null,
    muskarac int
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46) ,
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstean int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

alter table cura add foreign key (punac) references punac(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table zena add foreign key (sestra) references sestra(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);


insert into sestra(haljina,hlace,narukvica)
values('karirana','plave',1),
('ravna','zute',2),
('svecana','sive',3);


insert into zena(kratkamajica,jmbag,bojaociju,sestra)
values('plava','04994771013','zuta',1),
('crna','05694771013','zelena',1),
('bijela','984994771013','siva',1);


insert into svekar(bojaociju)
values('zelena'),
('plava'),
('zuta');

insert into sestra_svekar(sestra,svekar)
values(1,1),
(1,2),(2,2);

insert into cura(novcica,gustoca,ogrlica)
values(12.2,14.4,3);
select * from cura;

update  cura
set gustoca = 15.77
where sifra is not null;

insert into mladic(suknja,kuna,dukserica)
values('nema',16.7,'ima');

delete  from mladic 
where kuna > 15.78;

select * from zena where hlace like ('%ana%');


select a.asocijalno, f.dukserica, b.hlace 
from mladic a
inner join muskarac b on a.muskarac = b.sifra 
inner join zena c on c.sifra = b.zena 
inner join sestra d on d.sifra = c.sestra 
inner join sestra_svekar e on e.svekar = d.sifra 
inner join svekar f on f.sifra = e.sestra 
where c.hlace like ('%a') and d.haljina like ('%ba')
order by 3 desc;

select a.haljina, a.maraka 
from sestra a
inner join sestra_svekar b on a.sifra = b.sestra
where a.sifra != b.sestra;