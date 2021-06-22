create database	db_cidade_das_carnes;
use db_cidade_das_carnes;
create table tb_cate(
id_cat int not null auto_increment primary key,
tipodcorte varchar(30) not null,
prime varchar(30) not null, -- se a carne é prime ou não
tipodanim varchar(12)
);
create table tb_prod(
id_prod int not null auto_increment primary key,
nomeAni varchar(40) not null,
fabricante varchar(40) not null,
valorkg decimal (6,2) not null,
id_cat int not null,
FOREIGN KEY(id_cat) REFERENCES tb_cate(id_cat)
);
insert into tb_cate(tipodcorte,prime,tipodanim) values ("Fraldinha","Não","Boi");
insert into tb_cate(tipodcorte,prime,tipodanim)values ("Bisteca Suina","Não","porco");
insert into tb_cate(tipodcorte,prime,tipodanim) values ("jacaré","Sim","jacaré");
insert into tb_cate(tipodcorte,prime,tipodanim) values ("Carpaccio","Sim","Boi");
insert into tb_cate(tipodcorte,prime,tipodanim)values ("Assinha","Não","Frango");

insert into tb_prod(nomeAni,fabricante,valorkg,id_cat) values ("Ben","Dourados",34.59,1);
insert into tb_prod(nomeAni,fabricante,valorkg,id_cat) values ("Peppa Pig ","GustaX",40.50,2);
insert into tb_prod(nomeAni,fabricante,valorkg,id_cat) values ("Lacos","Cristalake",70.80,3);
insert into tb_prod(nomeAni,fabricante,valorkg,id_cat) values ("bacon","sdfsfa",69.82,4);
insert into tb_prod(nomeAni,fabricante,valorkg,id_cat) values ("chico","dfsdf",16.00,5);

select * from tb_prod where valorkg >= 50;

select * from tb_prod where valorkg >= 3 or valorkg <=60;

 SELECT * FROM tb_prod WHERE nomeAni LIKE   "%c%" ;

SELECT * FROM tb_prod p inner join tb_cate c on ( p.id_cat = c.id_cat);
