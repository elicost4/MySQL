create database db_e_commerce;
use db_e_commerce;

create table tb_produtos (
id bigint auto_increment,
codigo bigint(5)not null,
descricao varchar(255)not null,
grupo varchar(255)not null,
preco decimal(10,2) not null,
ativo boolean,
primary key(id)
);

insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (5642,
	"Battlefield 1","Games",189.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (6248,
	"FIFA21","Games",289.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (4058,
	"GTA V","Games",89.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (3529,
	"Rocket League","Games",79.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (7892,
	"Playstation 5","Console",4290.90,false);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (9892,
	"Xbox One X","Console",2999.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (7887,
	"PC Gamer","Informatica",6799.90,true);
insert into tb_produtos (codigo, descricao, grupo, preco, ativo) values (2056,
	"Mouse","Acessorio",159.90,true);
    
    select * from tb_produtos;
  

