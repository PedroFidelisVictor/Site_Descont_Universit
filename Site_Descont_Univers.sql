update equipes 
set estadio = 'Maracanã'
where times = 'flamengo';

select * from equipes;

update equipes 
set code = '05'
where times = 'cruzeiro';

alter table equipes modify column code char(5) first;


update equipes 
set code ='0002'
where times = 'flamengo';

alter table equipes add column titulos char(5) not null ;

update equipes 
set titulos = '12'
where times = 'cruzeiro';



 select times,titulos 
 from equipes 
 where titulos > 18
 order by titulos;
 
 
SELECT AVG (titulos)
 from equipes;
 
 select times, estado
 from equipes 
 where estado like '%Janeiro';

select count(times) as 'quantidade times'
from equipes ;

insert into equipes value ('06','Botafogo','Engenhão','Rio de Janeiro','5');
 select * from equipes;
 
 delete from equipes 
 where titulos = null;
 
 select * from equipes;
 
 DELETE FROM equipes WHERE code IS NULL OR times IS NULL OR Estadio IS NULL OR Estado IS NULL OR titulos IS NULL;
select * from equipes;

update equipes 
set code = '02'
where times = 'flamengo';

select AVG (titulos)
from equipes;

select count(times) as 'numero de times'
from equipes ;


select estado, count(*)	
from equipes 
group by estado ;


 select titulos, times, count(titulos)
 from equipes 
 where titulos > 18
 group by titulos, times  ;
 
select times, titulos
from equipes 
where titulos < (select avg (titulos) from equipes);


create database Banco_Universitario;


create table Usuário (
Nome_Usuário varchar(35) not null,
Email_Institucional varchar(35) not null,
Email varchar(35),
Instituição_de_Ensino varchar(30),
Senha varchar(20) not null,
CPF char(11) not null Primary Key,
N_Matrícula varchar(30) not null,
Esta_Validado enum('Sim','Não'),
Clicou enum('Verdadeiro','Falso'),
Data_Inicio DateTime,
Enviou_Comprovante enum('Sim','Não')
);

create table Produtos (
ID_Produto varchar(30) not null Primary Key,
Nome_Produto varchar(30),
Descrição_Produto varchar(50),
Categoria varchar(20),
Preço_Original decimal (6,2),
Porcentagem_Desconto decimal (5,2),
Link varchar(40)
);

create table Empresas (
CNPJ char(14) not null primary Key ,
ID_Empresa varchar(20),
Tipo_Negocio varchar(15),
Descrição_Empresa varchar(50),
Cep_Empresa char(8),
País_Empresa char(15) default 'Brasil',
Desconto_Exclusivo decimal (5,2),
Início_Contrato_Parceria datetime
);

select * from empresas ;














