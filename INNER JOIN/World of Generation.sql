CREATE DATABASE db_farmancia_do_bem
use db_generation_game_online;

CREATE TABLE tb_class(
	id_cla INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    apelido VARCHAR(50) NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    magia INT(50) NULL,
    arma varchar(50) NULL,
    sabedoria INT(50) NULL
);
show tables;
CREATE TABLE tb_pers(
	id_pers INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    fraqueza VARCHAR(50) NOT NULL,
    poder_ataque INT(100),
    id_cla INT NOT NULL,
    FOREIGN KEY (id_cla) REFERENCES tb_class(id_cla)
);


INSERT INTO tb_class (apelido, Tipo, magia, arma, sabedoria) VALUES ("Stone", "elfo", 500, "lança", 200);
INSERT INTO tb_class (apelido, Tipo, magia, arma, sabedoria) VALUES ("Drak", "cavaleiro", 650,"espada e escudo", 360);
INSERT INTO tb_class (apelido, Tipo, magia, arma, sabedoria) VALUES ("FragX", "Feiticeiro", 3000,"cajado encantado", 900);
INSERT INTO tb_class (apelido, Tipo, magia, arma, sabedoria) VALUES ("SacX", "Sacerdote", 2500,"Livro things", 980);
INSERT INTO tb_class (apelido, Tipo, magia, arma, sabedoria) VALUES ("CacX", "Kraken", 2500,"tentaculos explosivos", 500);

INSERT INTO tb_pers(nome, fraqueza,poder_ataque,id_cla) VALUES ("Stonebanks","feiticeiro", 1500,1);
INSERT INTO tb_pers(nome, fraqueza,poder_ataque,id_cla) VALUES ("Draketson","elfo", 1420,2);
INSERT INTO tb_pers(nome, fraqueza,poder_ataque,id_cla) VALUES ("Fragtonsesn","sacerdote", 2500,3);
INSERT INTO tb_pers(nome, fraqueza,poder_ataque,id_cla) VALUES ("Sacedot","Desconhecida", 4000,4);
INSERT INTO tb_pers(nome, fraqueza,poder_ataque,id_cla) VALUES ("CrakenX","Feiticeiro", 3000,5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_class;

SELECT * FROM tb_pers WHERE poder_ataque > 2000;

SELECT * FROM tb_pers p inner join tb_class c on ( p.id_cla = c.id_cla);