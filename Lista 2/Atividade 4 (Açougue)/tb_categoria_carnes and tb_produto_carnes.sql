create database db_cidade_das_carnes;

use db_cidade_das_carnes;

CREATE TABLE tb_categoria_carnes (
    id BIGINT(5) AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria_carnes (descricao, ativo) values ("Bovino",true);
insert into tb_categoria_carnes (descricao, ativo) values ("Suíno",true);
insert into tb_categoria_carnes (descricao, ativo) values ("Pertence Feijoada",true);
insert into tb_categoria_carnes (descricao, ativo) values ("Embutidos",true);
insert into tb_categoria_carnes (descricao, ativo) values ("Aves",true);

SELECT 
    *
FROM
    tb_categoria_carnes;

CREATE TABLE tb_produto_carnes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DOUBLE NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    categoria_carnes_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_carnes_id)
        REFERENCES tb_categoria_carnes (id)
);

insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Picanha",'69.50',"Corte de Primeira",1);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("File Mignon",'89.50',"Corte de Primeira",1);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Peito de Frango",'29.50',"Corte de Segunda",5);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Asa de Frango",'19.50',"Corte de Terceira",5);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Bisteca",'39.50',"Corte de Segunda",2);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Copa Lombo",'59.50',"Corte de Primeira",2);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Orelha de Porco",'9.50',"Corte de Terceira",3);
insert into tb_produto_carnes (nome,preco,tipo,categoria_carnes_id) values ("Linguiça Toscana",'69.50',"Corte de Segunda",4);

SELECT 
    *
FROM
    tb_produto_carnes;

SELECT 
    *
FROM
    tb_produto_carnes
WHERE
    preco > '50';

SELECT 
    *
FROM
    tb_produto_carnes
WHERE
    preco BETWEEN 3 AND 60;

SELECT 
    *
FROM
    tb_produto_carnes
WHERE
    nome LIKE ('%C%');

SELECT 
    nome AS NOME,
    preco AS PREÇO,
    tipo AS TIPO,
    tb_categoria_carnes.descricao AS CATEGORIA,
    tb_categoria_carnes.ativo AS SITUAÇÃO
FROM
    tb_produto_carnes
        INNER JOIN
    tb_categoria_carnes ON tb_categoria_carnes.id = tb_produto_carnes.categoria_carnes_id;
 
SELECT 
    nome AS NOME,
    preco AS PREÇO,
    tipo AS TIPO,
    tb_categoria_carnes.descricao AS CATEGORIA,
    tb_categoria_carnes.ativo AS SITUAÇÃO
FROM
    tb_produto_carnes
        INNER JOIN
    tb_categoria_carnes ON tb_categoria_carnes.id = tb_produto_carnes.categoria_carnes_id
WHERE
    descricao = 'Bovino'
