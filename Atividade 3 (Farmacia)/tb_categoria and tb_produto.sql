create database db_farmacia_do_bem;

use db_farmacia_do_bem;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria (categoria, ativo) values ("Antialérgicos",true);
insert into tb_categoria (categoria, ativo) values ("Cuidados Pessoais",true);
insert into tb_categoria (categoria, ativo) values ("Fitoterápicos",true);
insert into tb_categoria (categoria, ativo) values ("Infantil",true);
insert into tb_categoria (categoria, ativo) values ("Pele e Mucosa",true);

SELECT 
    *
FROM
    tb_categoria;

CREATE TABLE tb_produto (
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    preco DOUBLE NOT NULL,
    qtd_estoque INT NOT NULL,
    data_validade DATE NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Rizi-M",'69.89',10,'2021-01-10',1);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Benegrip",'14.99',20,'2022-02-23',1);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Sintocalmy",'33.42',30,'2023-03-05',3);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Seakalm",'15.99',40,'2024-04-19',3);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Serenus",'56.61',50,'2021-05-22',3);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Bepantol Derma",'26.76',60,'2022-06-26',2);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Pomada Hipoglós",'13.62',10,'2023-07-09',4);
insert into tb_produto (descricao,preco,qtd_estoque,data_validade,categoria_id) values ("Acnase Creme",'62.30',20,'2024-08-11',5);

SELECT 
    *
FROM
    tb_produto;

SELECT 
    *
FROM
    tb_produto
WHERE
    preco > 50;

SELECT 
    *
FROM
    tb_produto
WHERE
    preco BETWEEN 3 AND 60;

SELECT 
    *
FROM
    tb_produto
WHERE
    descricao LIKE '%B%';

SELECT 
    descricao AS DESCRIÇÃO,
    preco AS PREÇO,
    qtd_estoque AS QTD,
    data_validade AS VALIDADE,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id;
     
 
SELECT 
    descricao AS DESCRIÇÃO,
    preco AS PREÇO,
    qtd_estoque AS QTD,
    data_validade AS VALIDADE,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE
    categoria = 'Fitoterápicos'
