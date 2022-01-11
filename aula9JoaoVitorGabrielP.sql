create database aula9AtividadeJoaoVitorGabrielp;
show databases;
use aula9AtividadeJoaoVitorGabrielp;

create table forncedor(
	id_fornecedor int(4) zerofill not null auto_increment,
	nome varchar(60) not null,
    cpf char(11)not null unique,
	constraint pkfornecedor primary key(id_fornecedor)
);
create table produto(
	id_produto int (4)zerofill not null auto_increment,
	nome varchar (40)not null,
	valor double not null,
	quantidade int not null,
    id_fornecedor int(3)zerofill not null,
constraint pkproduto  primary key (id_produto),
constraint fkfornecedor foreign key(id_fornecedor)references fornecedor(id_fornecedor)
);
 
 insert into fornecedor(nome,cpf)
	values('João Pereira','12345678910'),
            ('Maria Mercedes','12345678912'),
            ('Leonardo Siqueira','12345678911');
            
insert into produto(nome,valor,quantidade,id_fornecedor)
	values('caixa de bombom','5.90','10','7'),
            ('bala','0.20','100','8'),
            ('som','700.10','4','9');

select * from fornecedor;
select * from produto;

select nome,cpf from fornecedor;
select valor from produto;

select*from produto where valor<=10.20;
select*from produto where quantidade>=20 and valor between 4 and 6;
select  nome,cpf from fornecedor where nome='João Pereira'and cpf='12345678910';
select nome,valor from produto where id_fornecedor=2;

select p.nome as nome ,p.valor as valor ,f.nome as nome
from produto p
inner join fornecedor as f
on p.id_fornecedor = f.id_fornecedor;