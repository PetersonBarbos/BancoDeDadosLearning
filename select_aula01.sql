	use cadastro;
	select * from cursos 
	order by ano;
/*vai ordenar a tabela pela coluna que eu escolher*/
/*Se eu colocar um desc após a coluna que ele vai ordenar ele vai retornar em ordem decerescente*/
	select * from cursos
	order by idcurso desc;
/*Para ele mostrar apenas colunas específicas*/
	select nome, carga, ano from cursos
	order by nome;
/*se eu quiser ordenar por ano e dentro dos anos eu quero ordenar pelo nome*/
	select ano, nome, carga from cursos
	order by ano, nome;
/*Para selecionar as linhas específicas que quero mostrar*/
	select * from cursos
	where ano = '2016'
	order by nome;
/*posso ainda selecionar por ano mas não mostrar o ano*/
	select nome, carga from cursos
	where ano = '2016'
	order by nome;
/*posso usar operadores relacionais na minha query também*/
	select nome, descricao, ano from cursos
	where ano <= '2015'
	order by nome;
/*between - seleciona uma faixa entre dois valores*/
	select nome, ano from cursos
	where ano between 2014 and 2016
	order by ano;
/* in - seleciona valores pontuais sem ser numa faixa*/
	select nome, descricao, ano from cursos
	where ano in (2014,2016)
	order by ano;
/*operadores lógicos*/
	select * from cursos
	where ano > 2015 and carga >40
	order by carga;
/**/
	select nome, carga, totaulas from cursos
	where carga > 35 or totaulas <30;