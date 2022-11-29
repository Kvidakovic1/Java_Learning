# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < E:\Java\Java_Learning\kolokvij_vjezbe\vjezba2.sql

drop database if exists vjezba2;
create database vjezba2;
use vjezba2;

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno bit not null,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49),
    kuna decimal(12,6),
    jmbag char(11), 
    cura int
);

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica int,
    introvertno bit,
    majica varchar(40) not null,
    decko int
);

create table decko(
    sifra int not null primary key auto_increment,
    indiferentno int,
    vesta varchar(34),
    asocijalno bit not null
);

create table decko_zarucnica(
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table zarucnica(
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15,9) not null,
    indiferentno bit not null
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime not null,
    ekstrovertno bit not null,
    prviputa datetime,
    svekar int
);

create table svekar(
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno bit not null
);


alter table prijatelj add foreign key (svekar) references svekar(sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);



insert into decko(asocijalno)
values(1),(1),(2);

insert into zarucnica(bojakose,lipa,indiferentno)
values('plava',15.6,1),
('crvena',11.4,2),
('zuta',20.0,1);


insert into cura(haljina,drugiputa,majica)
values('nova','2022-12-22','zelena'),
('stara','2022-1-22','plava'),
('kupljena','2022-10-22','smeda')
;



insert into neprijatelj(haljina,modelnaocala,kuna)
values('poderana','okrugli',166.6),
('nova','kockasti',122.6),
('prodana','bez okvira',100.6);

insert into decko_zarucnica(decko,zarucnica)
values(1,2),(1,1),(2,2);


update prijatelj 
set treciputa = '2020-04-30'
where sifra is not null;

delete from brat 
where ogrlica != 14;


select suknja from cura
where drugiputa is null;


select a.novcica, f.neprijatelj , e.haljina 
from zarucnica a
inner join decko_zarucnica b on a.sifra = b.zarucnica 
inner join decko c on c.sifra = b.decko 
inner join cura d on d.decko  = c.sifra
inner join neprijatelj e on e.cura = d.sifra 
inner join brat f on f.neprijatelj = e.sifra 
where d.drugiputa is not null and c.vesta like ('%ba%')
order by 3 desc ;

select a.vesta , a.asocijalno 
from decko a 
inner join decko_zarucnica b on b.decko = a.sifra 
where a.sifra != b.decko 