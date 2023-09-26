/*alterando a estrutura da tabela*/
use cadastro;
alter table pessoas
add column profissao varchar(10);
/*para apagar coluna*/
alter table pessoas
drop column profissao;
/*Para adicionar coluna em posição especifica que não seja a primeira*/
alter table pessoas
add column profissao varchar (10) after nome;
/*Para adicionar coluna como primeira coluna*/
alter table pessoas
add codigo int first;
/*não precisa add column, somente add nomedacoluna já serve*/
/*Para aumentar o campo profissao pra varchar(20) e ainda adicionar constraints
alter table pessoas
modify column profissao varchar(20) not null default 'vagabundo';
describe pessoas;
NAÕ FUNCIONOU*/
select * from pessoas;
/*Para mudar o nome da coluna usa-se o change, mas tem que colocar
 o antigo e o novo nome da coluna e tem que adicionar as constraints novamente*/
 alter table pessoas
 change column profissao prof varchar(20);
 /*o prblema da linha 17 é o not null, deu o mesmo erro no change*/
 
 /*para modificar o nome da tabela inteira*/
 alter table pessoas
 rename to individuos;
 
 create table if not exists cursos(
 nome varchar(30) not null unique,
 descricao text,
 carga int unsigned,
 totaulas int unsigned,
 ano  year default '2023'
 ) default charset = utf8;
 desc cursos;
 /*só porque eu coloquei unique em nome ele adicinou ela como primary key, mas quando adiciono
 idcurso como primary key fica nromal*/
 /*adicionando primary key em cursos*/
 alter table cursos
 add column idcurso int first;
 alter table cursos
 add primary key(idcurso);
 
 /*para apagar tabela com registros*/
 create table if not exists teste(
 id int,
 nome varchar(30),
 idade int);
 insert into teste values
 ('1', 'Pedro', '22'),
 ('2', 'Creuza', '59'),
 ('3', 'Enzo', '6');
select * from teste;
/*Agora para apagar com os valores inseridos*/
drop table if exists teste;