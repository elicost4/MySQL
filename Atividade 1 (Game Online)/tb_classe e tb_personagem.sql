-- criando banco de dados
create database db_generation_game_online;

-- usando banco de dados
use db_generation_game_online;

-- criando tabela classe
CREATE TABLE tb_classe (
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    tipo_atk VARCHAR(255) NOT NULL,
    pontos_de_vida INT NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_classe (descricao, tipo_atk, pontos_de_vida) values ("Guerreiro","Curto",799);
insert into tb_classe (descricao, tipo_atk, pontos_de_vida) values ("Mago","Longo",699);
insert into tb_classe (descricao, tipo_atk, pontos_de_vida) values ("Espadachim","Curto",749);
insert into tb_classe (descricao, tipo_atk, pontos_de_vida) values ("Arqueiro","Longo",689);
insert into tb_classe (descricao, tipo_atk, pontos_de_vida) values ("Paladino","Medio",709);
-- tabela classe criada e populada

SELECT 
    *
FROM
    tb_classe;

-- criando tabela personagem
CREATE TABLE tb_personagem (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    atk INT NOT NULL,
    def INT NOT NULL,
    accuracy INT NOT NULL,
    class_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (class)
        REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Azadium",899,439,72,2);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Grafralf",719,901,90,1);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Ewaelle",879,487,69,2);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Velfhus",709,913,82,1);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Trifoth",721,899,86,1);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Goronul",739,807,68,3);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("The Crow",888,601,80,5);
insert into tb_personagem (nome, atk, def, accuracy, class_id) values ("Robin Hood",919,389,60,4);
-- tabela personagem criada e populada referenciando tabela classe na foreign key

SELECT 
    *
FROM
    tb_personagem;

SELECT 
    *
FROM
    tb_personagem
WHERE
    atk > 800;
-- buscando personagens de ataque maior que 800

SELECT 
    *
FROM
    tb_personagem
WHERE
    def BETWEEN 800 AND 1000;
-- buscando personagens de defesa entre 800 e 1000

SELECT 
    *
FROM
    tb_personagem
WHERE
    nome LIKE ('%C%');
-- buscando personagem que contem a letra C

SELECT 
    nome,
    atk,
    def,
    accuracy,
    tb_classe.descricao AS classe,
    tb_classe.pontos_de_vida AS HP,
    tb_classe.tipo_atk AS combate
FROM
    tb_personagem
        INNER JOIN
    tb_classe ON tb_classe.id = tb_personagem.class_id;
-- usando inner join para unir tabela personagem com tabela classe exibindo as colunas com mascara

SELECT 
    nome,
    atk,
    def,
    accuracy,
    tb_classe.descricao AS classe,
    tb_classe.pontos_de_vida AS HP,
    tb_classe.tipo_atk AS combate
FROM
    tb_personagem
        INNER JOIN
    tb_classe ON tb_classe.id = tb_personagem.class_id
WHERE
    descricao = ('Guerreiro');
-- usando inner join para unir tabela personagem com tabela classe exibindo as colunas com mascara e usando filtro
-- de atributo descrição = Guerreiro