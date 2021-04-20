 create database db_rh;
 use db_rh;
 create table tb_funcionaries (
 id bigint auto_increment,
 nome varchar(255) not null,
 cargo varchar(255) not null,
 salario decimal (10,2) not null,
 setor varchar(255) not null,
 data_admissao date not null,
 primary key (id)
 );

 insert into tb_funcionaries (nome,cargo,salario,setor,data_admissao) values ("Joao da Silva",
	"Analista",1950.09,"Administrativo",'2021-07-01');
    insert into tb_funcionaries (nome,cargo,salario,setor,data_admissao) values ("Maria dos Santos",
	"Gerente",3800.00,"Administrativo",'2016-02-28');
    insert into tb_funcionaries (nome,cargo,salario,setor,data_admissao) values ("Cintia Souza",
	"Auxiliar",1810.19,"Recursos Humanos",'2018-03-05');
    insert into tb_funcionaries (nome,cargo,salario,setor,data_admissao) values ("Emerson Nascimento",
	"Tech Recruiter",2950.09,"TI",'2020-11-20');
    insert into tb_funcionaries (nome,cargo,salario,setor,data_admissao) values ("Cristiano Ronaldo",
	"Analista",2749.58,"Marketing",'2021-04-20');
    
    select * from tb_funcionaries;
   
 