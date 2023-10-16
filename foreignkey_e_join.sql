use cadastro;
/*Para adcionar uma foreign key*/
	alter table alunos
    add column cursopreferido int;
    desc alunos;
    alter table alunos
    add foreign key(cursopreferido) 
    references cursos(idcurso);
/*Para adicionar os registros*/
	update alunos
    set cursopreferido = '2'
    where id = '1';
    select* from alunos;
/*posso adicionar os valores diret na tabela quando dou um select * e dpois clicando no apply*/
/*Integridade referencial - eu não posso apagar um dado que está sendo referenciado, no exemplo
eu não posso apagar um curso que algum aluno escolheu como preferido, pois vai gerar uma incosistência
porque um aluno vai preferir um curso que nem sequer existe, mas se eu deletar um curso que ninguém 
escolheu como preferido ainda ele vai ser apagado normalmente*/
	delete from cursos
    where idcurso = '2';
    select*from cursos;
    delete from cursos
    where idcurso = '17';
/*Se eu dou um select em alunos eu consigo ver o código do curso que ele prefere, mas não
consigo ver o nome do curso, para fazer isso devo usar o inner join ou somente join*/
	select alunos.nome, cursos.idcurso, cursos.nome, cursos.ano
    from alunos join cursos
    on cursos.idcurso = alunos.cursopreferido;
/*Para reduzir o código posso utilizar apelidos*/
	select a.nome, c.idcurso, c.nome, c.ano
    from alunos as a join cursos as c
    on c.idcurso = a.cursopreferido;
/*Na tabela alunos eu tenho alunos que não preferem nenhum curso e na tabela cursos eu tenho cursos
que não são preferidos por nenhum aluno, para mostrar todos alunos inclusive os que não preferem nenhum curso
eu uso o outer join referenciando o lado que está os alunos - esquerdo*/
	select a.nome, c.idcurso, c.nome, c.ano
    from alunos as a left outer join cursos as c
    on c.idcurso = a.cursopreferido;
/*Se eu quiser mostrar os cursos, inclusive os que não são preferidos por ninguém eu uso o outer join
referenciando o lado que estão os cursos*/
	select a.nome, c.idcurso, c.nome, c.ano
    from alunos as a right outer join cursos as c
    on a.cursopreferido = c.idcurso;