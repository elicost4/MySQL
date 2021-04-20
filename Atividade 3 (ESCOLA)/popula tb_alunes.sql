create database db_escola;
use db_escola;

create table tb_alunes(
id bigint auto_increment,
nome varchar (255) not null,
idade int (3) not null,
serie varchar (10) not null,
nota decimal (2,1) not null,
situacao int (9) not null,
primary key (id)
);

insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Maria",12,"6º ano",7.0,"APROVADA");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Joana",9,"4º ano",6.0,"REPROVADA");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Henrique",10,"4º ano",8.5,"APROVADO");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Mauro",8,"3º ano",5.9,"REPROVADO");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Joao",14,"9º ano",9.9,"APROVADO");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Marcia",6,"1º ano",8,"APROVADA");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Rogerio",7,"2º ano",3,"REPROVADO");
insert into tb_alunes (nome,idade,serie,nota,situacao) values ("Cintia",11,"5º ano",9,"APROVADA");

select * from tb_alunes;