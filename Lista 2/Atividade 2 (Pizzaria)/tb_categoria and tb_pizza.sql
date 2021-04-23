create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria (tipo,ativo) values ("Tradicionais",true);
insert into tb_categoria (tipo,ativo) values ("Doces",true);
insert into tb_categoria (tipo,ativo) values ("Vegana",false);
insert into tb_categoria (tipo,ativo) values ("Mista",true);
insert into tb_categoria (tipo,ativo) values ("Promocionais",true);

SELECT 
    *
FROM
    tb_categoria;

CREATE TABLE tb_pizza (
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    preco DOUBLE NOT NULL,
    tamanho VARCHAR(1) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("AMERICANA",'39.55',"G",1);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("MUSSARELA",'36.55',"M",1);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("PRESTIGIO",'32.55',"P",2);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("CHOCOLATE MESCLADO",'46.55',"F",2);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("INTEGRAL VEGANA",'40.55',"G",3);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("MUSSARELA/CALABRESA",'37.55',"M",4);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("LOMBO COM CATUPIRY",'33.55',"P",5);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("BOLONHESA",'48.55',"F",5);
insert into tb_pizza (descricao,preco,tamanho,categoria_id) values ("IMPERIAL",'55.55',"F",5);

SELECT 
    *
FROM
    tb_pizza;

SELECT 
    *
FROM
    tb_pizza
WHERE
    preco > 40.00;

SELECT 
    *
FROM
    tb_pizza
WHERE
    preco BETWEEN 29.00 AND 60.00;

SELECT 
    *
FROM
    tb_pizza
WHERE
    descricao LIKE ('%C%');

SELECT 
    descricao AS DESCRIÇÃO,
    tamanho AS TAMANHO,
    preco AS PREÇO,
    tb_categoria.tipo AS TIPO,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_pizza
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_pizza.categoria_id;
 
SELECT 
    descricao AS DESCRIÇÃO,
    tamanho AS TAMANHO,
    preco AS PREÇO,
    tb_categoria.tipo AS TIPO,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_pizza
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
WHERE
    tipo = 'Doces';