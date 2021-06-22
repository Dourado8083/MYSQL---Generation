create database db_cursoDminhavida;
use db_cursoDminhavida;
create table tb_cate(
id_cat int not null auto_increment primary key,
tipoCur varchar(30) not null,
presen varchar(30) not null,-- solidos ou liquido
duracao varchar(12)
);
create table tb_prod(
id_prod int not null auto_increment primary key,
nomeCur varchar(40) not null,
profes varchar(40) not null,
valoruni decimal (6,2) not null,
valorconjut decimal (10 , 2) not null,
id_cat int not null,
FOREIGN KEY(id_cat) REFERENCES tb_cate(id_cat)
);
insert into tb_cate(tipoCur,presen,duracao) values  ("Tecnologia","Presencial","4 meses");
insert into tb_cate(tipoCur,presen,duracao) values ("Culinaria","Presencial","1 ano");
insert into tb_cate(tipoCur,presen,duracao) values ("Medicina","presencial","2 anos");  
insert into tb_cate(tipoCur,presen,duracao) values ("Jornalismo","Flex","1 ano");
insert into tb_cate(tipoCur,presen,duracao) values ("Vinicultura","Flex","5 meses");

insert into tb_prod(nomeCur,profes,valoruni,valorconjut,id_cat) values ("Java","Luiz",50,150,1);
insert into tb_prod(nomeCur,profes,valoruni,valorconjut,id_cat) values ("Gastronomia em geral","Vini",150,300,2);
insert into tb_prod(nomeCur,profes,valoruni,valorconjut,id_cat) values ("Dentista","clara",49,357,3);
insert into tb_prod(nomeCur,profes,valoruni,valorconjut,id_cat)values ("Apresentador","renata vasco",89,550,4);
insert into tb_prod(nomeCur,profes,valoruni,valorconjut,id_cat) values ("Desgustador","Liza",200,800,5);


select * from tb_prod where valoruni >= 50;

select * from tb_prod where valoruni >= 3 or valoruni <=60;

 -- SELECT * FROM tb_prod WHERE nomeCur LIKE " % j%";

SELECT * FROM tb_prod p inner join tb_cate c on ( p.id_cat = c.id_cat);
