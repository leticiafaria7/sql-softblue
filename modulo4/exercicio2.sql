USE cursos_softblue;

-- Exibir todas as informações de todos os alunos;
SELECT * FROM alunos;

-- Exibir somente o título de cada curso da Softblue;
SELECT curso FROM cursos;

-- Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200;
SELECT curso, valor FROM cursos WHERE valor > 200;

-- Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200 e menor que 300;
SELECT curso, valor FROM cursos WHERE valor > 200 AND valor < 300;

-- Exibir as informações da tabela PEDIDOS para os pedidos realizados entre 15/04/2010 e 18/04/2010;
SELECT * FROM compras WHERE data_hora > '2010-04-15' AND data_hora < '2010-04-19';

-- Exibir as informações da tabela PEDIDOS para os pedidos realizados na data de 15/04/2010;
SELECT * FROM compras WHERE DATE(data_hora) = '2010-04-15';



