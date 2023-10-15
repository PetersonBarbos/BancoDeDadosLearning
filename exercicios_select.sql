/*Exercicio 01 - lista com a profissão e seus respctivos quantitativos*/
	use cadastro;
    select profissao, count(*) from alunos
    group by profissao;
/*Exercício 02 - quantos homens e quantas mulheres nasceram após 01/01/2005*/
	select sexo, count(*) from alunos
    where nascimento > '2005/01/01'
    group by sexo;
/*Exercico 03 - uma lista dos que nasceram fora do Brasil, mostrando o páis de origem e o total de pessoas
nascidas lá. só nos interessam os países que tiveram mais de 3 pessoas com essa nacionalidade*/
	select nacionalidade, count(*) from alunos
    where nacionalidade != 'Brasil'
    group by nacionalidade
    having count(*) > 3;
/* Exercício 04 - lista agrupada pela altura, mostrando quantas pessoas pesam mais de 100kg e que estão
acima da média de altura de todos os cadastrados*/
	select avg(altura) from alunos;
    select altura, count(*) from alunos
    where peso > 100
    group by altura
    having altura > (select avg(altura) from alunos);
    