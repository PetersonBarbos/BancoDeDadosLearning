/*Relacionamento de n para n*/
	use cadastro;
    create table aluno_assiste_curso(
		id int not null auto_increment,
        datai date,
        idaluno int,
        idcurso int,
        primary key (id),
        foreign key (idaluno) references alunos(id),
        foreign key (idcurso) references cursos(idcurso)
	) default charset = utf8;
    desc aluno_assiste_curso;
/*Para inserir registros*/
		insert into aluno_assiste_curso values
        (default, '2014-03-01', '1', '2');
        select * from aluno_assiste_curso;
/*adiciona alguns registros pela tabela mesmo e para mostrar o nome do curso e do aluno pelo select
usa-se dois joins*/
		select p.nome, c.nome from alunos p
        join aluno_assiste_curso a
        on a.idaluno = p.id
        join cursos c
        on c.idcurso = a.idcurso;
	