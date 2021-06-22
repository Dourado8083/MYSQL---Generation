use db_farmancia_do_bem;
create table tb_cate(
id_cat int not null auto_increment primary key,
tarja varchar(30) not null,
tipodRem varchar(30) not null,-- solidos ou liquido
generico varchar(12)
);
create table tb_prod(
id_prod int not null auto_increment primary key,
nomePr varchar(40) not null,
fabricante varchar(40) not null,
valoruni decimal (6,2) not null,
valorconjut decimal (10 , 2) not null,
id_cat int not null,
FOREIGN KEY(id_cat) REFERENCES tb_cate(id_cat)
);
insert into tb_cate(tarja,tipodRem,generico) values ("preta","solido","similares");
insert into tb_cate(tarja,tipodRem,generico) values ("branca","liquido","referencia");
insert into tb_cate(tarja,tipodRem,generico) values ("Vermelha","liquido","generico");
insert into tb_cate(tarja,tipodRem,generico) values ("rosa","liquido","similares");
insert into tb_cate(tarja,tipodRem,generico) values ("laranja","solido","generico");

insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("Dipirona","Dipirona",2.39,35,1);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values  ("Baby-drax","união medica",5.30,50,2);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("Cloro","cloro",4.00,65,3);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("prednisona","prednisona",45,150,4);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("Pantogar","Pantogar",50,500,5);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("asdfsadf","dfsafsd",90.80,200,6);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("Pasasdfr","Pasfasdr",65.45,530,7);
insert into tb_prod(nomePr,fabricante,valoruni,valorconjut,id_cat) values ("ogar","ogar",27.32,510,8);

select * from tb_prod where valoruni >= 50;

select * from tb_prod where valoruni >= 3 or valoruni <=60;

-- SELECT * FROM tb_prod WHERE nomePr LIKE   " %b% " ;

SELECT * FROM tb_prod p inner join tb_cate c on ( p.id_cat = c.id_cat);

  
