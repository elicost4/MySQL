create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    ensino VARCHAR(255) NOT NULL,
    certificado VARCHAR(3) NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria (categoria,ensino,certificado) values ("Ciências de Dados","Presencial","SIM");
insert into tb_categoria (categoria,ensino,certificado) values ("Computação em Nuvem","À Distância","SIM");
insert into tb_categoria (categoria,ensino,certificado) values ("Análises e Estratégia de Negócios","À Distância","NÃO");
insert into tb_categoria (categoria,ensino,certificado) values ("Desenvolvimento Web","À Distância","NÃO");
insert into tb_categoria (categoria,ensino,certificado) values ("Desenvolvimento de Software","Presencial","SIM");

SELECT 
    *
FROM
    tb_categoria;

CREATE TABLE tb_produto (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    duracao_horas INT NOT NULL,
    nivel VARCHAR(255) NOT NULL,
    software VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Fundamentos de Análise de Dados",10,"Iniciante","MySQL",1);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Power BI",400,"Avançado","Power Query",1);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Fundamentos Azure DevOps",2,"Iniciante","Azure",2);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Usando Filtro de Datas",12,"Iniciante","Office 365",3);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Importando Dados do PowerPivot",35,"Intermediário","Microsoft Excel",3);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Introdução ao DAX",16,"Intermediário","Power BI",3);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Fundamentos de JavaScript",4,"Iniciante","JavaScript",4);
insert into tb_produto (nome,duracao_horas, nivel, software, categoria_id) values ("Usando Módulos Python",180,"Avançado","Python",5);

SELECT 
    *
FROM
    tb_produto;

SELECT 
    *
FROM
    tb_produto
WHERE
    duracao_horas > 50;

SELECT 
    *
FROM
    tb_produto
WHERE
    duracao_horas BETWEEN 3 AND 60;

SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE ('%J%');

SELECT 
    nome AS NOME,
    duracao_horas AS DURAÇÃO_HORAS,
    nivel AS NÍVEL,
    software AS SOFTWARE,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ensino AS ENSINO,
    tb_categoria.certificado AS CERTIFICADO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id;
    
    SELECT 
    nome AS NOME,
    duracao_horas AS DURAÇÃO_HORAS,
    nivel AS NÍVEL,
    software AS SOFTWARE,
    tb_categoria.categoria AS CATEGORIA,
    tb_categoria.ensino AS ENSINO,
    tb_categoria.certificado AS CERTIFICADO
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE
    categoria = 'Análises e Estratégia de Negócios'