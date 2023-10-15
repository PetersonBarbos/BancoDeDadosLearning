	use cadastro;
/*Agrupando*/
	select carga from cursos
	group by carga;
/*o resultado visual vai ser o mesmo de select distinct carga from cursos, 
só que no distinct ele pega o primeiro valor e descarta todos os outros iguais, 
no group by ele agrupa todos que são iguais*/
	select carga, count(nome) from cursos
	group by carga;
/*ele vai mostrar quantos cursos tem a mesma carga*/
	select carga, count(*) from cursos
    where totaulas = 30
    group by carga;
/*Para mostrar filtrados dentro do group*/
	select carga, count(nome) from cursos
    group by carga
    having count(nome) > 3;
/*Vai mostrar apenas os que o grupo tem mais que 3 cursos*/
	select ano, count(*) from cursos
    group by ano
    having ano > '2013'
    order by count(*) desc;
/*select dentro de select para mostrar os cursos que tem a carga maior que a média das cargas*/
	select avg(carga) from cursos;
	select carga, count(*) from cursos
    group by carga
    having carga > (select avg(carga) from cursos);