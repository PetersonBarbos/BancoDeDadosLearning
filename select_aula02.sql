	use cadastro;
/*Para mostrar todos que começam com determinada letra*/
	select * from cursos
	where nome like 'p%';
/* o "%" substitui nenhum ou vários caracteres*/
/*valores que terminam com determinada letra*/
	select * from cursos
	where nome like '%a';
/*Se eu quiser o a em qualquer lugar*/
	select * from cursos
	where nome like '%a%'
	order by idcurso;
/*se eu não quiser o valor em lugar nenhum*/
	select * from cursos
	where nome not like '%a%';
/*Para ser mais especifico usa se o _, que representa apenas um caractere*/
	select * from cursos
	where nome like 'php_';
/*se colocar _ _ vão ser dois caracteres e assim por diante*/
/**/
	select * from alunos
	where nome like '%silva%';
/*ele selecionou silvana*/
	select * from alunos
	where nome like '%_silva%';
/*assim não seleciona silvana*/
/*distinct - para não mostrar valores repetidos, supondo que eu quero saber apenas quais nacionalidades
tem em uma tabela*/
	select distinct nacionalidade from alunos;
/*Funcões de agregação - count - vai retornar o número de linhas*/
	select count(*) from alunos;
/*Funcões de agregação - max - vai retornar o valor máximo dentro de um campo*/
	select max(carga) from cursos;
	select max(totaulas) from cursos;
/*Funcões de agregação - min - vai retornar o valor mínimo*/
	select min(totaulas) from cursos
	where ano = '2016';
/*no dele funcionou assim: select nome, min(totaulas) from cursos
mas no meu não funcionou*/
/*Funcões de agregação - sum - vai retornar a soma dos valores*/
	select sum(totaulas) from cursos;
/*Funcões de agregação - avg - vai retornar a média dos valores*/
	select avg(carga) from cursos;



