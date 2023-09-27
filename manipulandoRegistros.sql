/*Manipulando linhas/registros/tuplas*/
	use cadastro;
    insert into cursos 
    (idcurso, nome, descricao, carga, totaulas, ano)
    values
    ('1', 'HTML4', 'curso de HTML5', '40', '37', '2014'),
	('2', 'Algorítmos', 'Lógica de programação', '20', '15', '2014'),
    ('3', 'photoshop', 'Dicas de photoshop cc', '10', '8', '2014'),
    ('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
    ('5', 'Jarva', 'introdução à linguagem Java', '10', '29', '2000'),
    ('6', 'MySql', 'Banco de dados MySql', '30', '15', '2016'),
    ('7', 'Word', 'Curso completo de Word', '40', '30', '2018'),
    ('8', 'sapateado', 'Danças rítmicas', '20', '15', '2018'),
    ('9', 'cozinha', 'aprende gastronomia', '20', '15', '2018'),
    ('10','Tiktok','seja um npc','20','15','2018');
    select * from cursos;
	desc cursos;
/*Para manipular uma linha*/
	update cursos
    set nome = 'HTML5'
    where idcurso = '1';
    /*A referência where é reconmedável que seja a chave primária para que a mudança seja única*/
/*modificando mais de uma coluna por linha*/
	update cursos
    set nome = 'PHP', ano = '2015'
    where idcurso = '4';
/*Para limitar a mudança para apenas uma linha caso eu não esteja trabalhando com chave primária*/
	update cursos
    set nome = 'Java', ano = '2015', carga = '40'
    where idcurso = '5'
    limit 1;
/*Para alterar mais de uma linha tem que desativar o safe updates do workbench*/
	/*vai em edit -> preferences -> SQL editor -> e desmarca o safe updates*/
	update cursos
    set ano = '2050', carga = '800'
    where ano = '2014'
    limit 3;
    select * from cursos;
    /*Para alterar mais de uma linha só funciona com o limt agora*/
	update cursos
    set ano = '2015'
    where ano = '2018'
    limit 1;
    /*Com o limit ele funciona*/
/*para deletar registros*/
	delete from cursos
    where idcurso = 8;
/*Para apagar mais de um*/
	delete from cursos
    where ano = '2018'
    limit 2;
/*Para apagar todos os registros*/
	truncate cursos;
	select * from cursos;
    