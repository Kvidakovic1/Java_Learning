# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\kolokvij_vjezbe\vjezba5.sql
drop database if exists vjezba5;
create database vjezba5;

use vjezba5;

create table ostavljena(
    sifra int not null primary key auto_increment,
    majica varchar(33),
    ogrlica int not null,
    carape varchar(44),
    stilfrizura varchar(42),
    punica int not null
);

create table punica (
    sifra int not null primary key auto_increment,
    hlace varchar(43) not null,
    nausnica int not null,
    ogrlica int,
    vesta varchar(49) not null,
    modelnaocala varchar(31) not null,
    treciputa datetime not null,
    punac int not null
);

create table punac (
    sifra int not null primary key auto_increment,
    dukserica varchar(33),
    prviputa datetime not null,
    majica varchar(36),
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojakose varchar(33),
    majica varchar(31),
    carape varchar(31) not null,
    haljina varchar(43),
    narukvica int,
    eura decimal(14,5) not null
);

create table svekar_cura (
    sifra int not null primary key auto_increment,
    svekar int not null,
    cura int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    carape varchar(41) not null,
    maraka decimal(17,10) not null,
    asocijalno bit,
    vesta varchar(47) not null
);

create table mladic (
    sifra int not null primary key auto_increment,
    kratkamajica varchar(48) not null,
    haljina varchar(30) not null,
    asocijalno bit,
    zarucnik int
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    lipa decimal(12,8),
    indiferentno bit not null
);


alter table svekar_cura add foreign key(cura) references cura(sifra);
alter table svekar_cura add foreign key(svekar) references svekar(sifra);
alter table punac add foreign key (svekar) references svekar (sifra);
alter table punica add foreign key(punac) references punac(sifra);
alter table ostavljena add foreign key(punica) references punica (sifra);
alter table mladic add foreign key(zarucnik) references zarucnik(sifra); 


insert into svekar (carape,eura)
values('vunene',12.5),('platnene',14.6),('karirane',19.2);

insert into cura (carape,maraka,vesta)
values ('vunene',24.2,'plava'),('crne',55.5,'siva'),
('strikane',11.2,'zelena');

insert into svekar_cura (svekar,cura)
values(1,1),(2,2),(3,3);

insert into punac (prviputa,svekar )
values(1999,1),(2005,2),(1947,3);

insert into punica (hlace,nausnica,vesta,modelnaocala,treciputa,punac)
values ('svilene',2,'plava','siva',1999,1),('zelena',32,'plava','kvalitetan',1989,2),('modra',23,'lijevane','prada',2019,3);

update mladic set haljina='Osijek'
where sifra is not null;

delete from ostavljena 
where ogrlica = 17;

select majica from punac 
where prviputa is null ;

select f.asocijalno , a.stilfrizura , b.nausnica 
from ostavljena a
inner join punica b on b.sifra=a.punica 
inner join punac c on c.sifra=b.punac 
inner join svekar d on d.sifra =c.svekar 
inner join svekar_cura e on e.svekar=d.sifra 
inner join cura f on f.sifra =e.cura 
where c.prviputa is not null and d.majica like ('%ba%') 
order by b.nausnica desc ;

select a.majica , a.carape 
from svekar a
left join svekar_cura b on a.sifra =b.svekar 
where b.sifra is null ;