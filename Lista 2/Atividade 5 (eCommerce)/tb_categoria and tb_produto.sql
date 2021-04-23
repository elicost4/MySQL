create database db_cidade_dos_games;

use db_cidade_dos_games;

CREATE TABLE `tb_categoria` (
	`id` bigint(5) NOT NULL AUTO_INCREMENT,
	`categoria` varchar(255) NOT NULL,
	`ativo` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

insert into tb_categoria (categoria,ativo) values ("Conlose",true);
insert into tb_categoria (categoria,ativo) values ("PC Gaming",true);
insert into tb_categoria (categoria,ativo) values ("Vídeo Games",true);
insert into tb_categoria (categoria,ativo) values ("Fliperama",true);
insert into tb_categoria (categoria,ativo) values ("Acessórios",true);

select * from tb_categoria;

CREATE TABLE `tb_produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
    `marca` varchar(255) not null,
	`preco` double NOT NULL,
	`qtd_estoque` INT NOT NULL,
	`categoria_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("Playstation 5","Sony",4999.99,42,1);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("Xbox One X","Microsoft",3999.99,33,1);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("PC Gamer ITX Arena","Asus",6599.99,11,2);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("PC Gamer ITX FPS","Asus",17560.20,3,2);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("Call Of Duty","Sony",89.99,63,3);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("GTA-V","Sony",139.99,12,3);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("Cokpit Simulator","Kfine",2799.99,1,4);
insert into tb_produto (descricao, marca, preco, qtd_estoque, categoria_id) values ("Joystick Xbox One","Microsoft",449.99,29,5);

SELECT 
    *
FROM
    tb_produto;

SELECT 
    *
FROM
    tb_produto
WHERE
    preco > 5000;

SELECT 
    *
FROM
    tb_produto
WHERE
    preco BETWEEN 3 AND 600;

SELECT 
    *
FROM
    tb_produto
WHERE
    descricao LIKE ('%C%');

SELECT 
    descricao AS DESCRICAO,
    marca AS MARCA,
    preco AS PREÇO,
    qtd_estoque AS QTD,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id;
       
SELECT 
    descricao AS DESCRICAO,
    marca AS MARCA,
    preco AS PREÇO,
    qtd_estoque AS QTD,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ativo AS SITUAÇÃO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE
    categoria = 'Vídeo Games';
       