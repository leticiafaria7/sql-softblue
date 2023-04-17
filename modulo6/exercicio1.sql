USE cursos_softblue;

-- Selecione os nomes de todos os alunos que já fizeram alguma matrícula na Softblue, sem repetição;
SELECT DISTINCT(nome) FROM alunos;

-- Exiba o nome do aluno mais antigo da Softblue;
SELECT alunos.nome FROM compras 
LEFT JOIN alunos ON compras.id_aluno = alunos.id
ORDER BY data_hora
LIMIT 1;

-- Exiba o nome do aluno mais recente da Softblue;
SELECT alunos.nome FROM compras 
LEFT JOIN alunos ON compras.id_aluno = alunos.id
ORDER BY data_hora DESC
LIMIT 1;

-- Exiba o nome do terceiro aluno mais antigo da Softblue;
SELECT nome FROM compras
INNER JOIN alunos ON alunos.id = compras.id_aluno
ORDER BY compras.data_hora
LIMIT 1
OFFSET 2;

-- Exiba a quantidade de cursos que já foram vendidos pela Softblue;
SELECT COUNT(*) FROM compras_detalhe;

-- Exiba o valor total já arrecadado pelos cursos vendidos pela Softblue;
SELECT SUM(valor) FROM compras_detalhe;

-- Exiba o valor médio cobrado por curso para o pedido cujo CODIGO é 2;
SELECT AVG(valor) FROM compras_detalhe WHERE id_curso = 2;

-- Exiba o valor do curso mais caro da Softblue;
SELECT MAX(valor) FROM cursos;

-- Exiba o valor do curso mais barato da Softblue;
SELECT MIN(valor) FROM cursos;

-- Exiba o valor total de cada pedido realizado na Softblue;
SELECT id_compra, SUM(valor) FROM compras_detalhe GROUP BY id_compra;

-- Exiba os nomes dos instrutores da Softblue e a quantidade de cursos que cada um tem sob sua responsabilidade;
SELECT nome, COUNT(nome) FROM professores
LEFT JOIN cursos ON professores.id = cursos.id_professor
GROUP BY nome;

-- Exiba o número do pedido, nome do aluno e valor para todos os pedidos realizados na Softblue cujo valor total sejam maiores que 500;
SELECT compras_detalhe.id_compra, SUM(compras_detalhe.valor) AS total_pedido, alunos.nome FROM compras_detalhe
LEFT JOIN compras ON compras_detalhe.id_compra = compras.id
LEFT JOIN alunos ON compras.id_aluno = alunos.id
GROUP BY id_compra
HAVING total_pedido > 500;

-- Exiba o número do pedido, nome do aluno e quantos cursos foram comprados no pedido para todos os pedidos realizados na Softblue que compraram dois ou mais cursos;
SELECT compras_detalhe.id_compra, COUNT(compras_detalhe.id_compra) AS n_cursos, alunos.nome FROM compras_detalhe
LEFT JOIN compras ON compras_detalhe.id_compra = compras.id
LEFT JOIN alunos ON compras.id_aluno = alunos.id
GROUP BY id_compra
HAVING n_cursos >= 2;

-- Exiba o nome e endereço de todos os alunos que morem em Avenidas (Av.);
SELECT nome, endereco FROM alunos WHERE endereco LIKE 'Av%';

-- Exiba os nomes dos cursos de Java da Softblue;
SELECT curso FROM cursos WHERE curso LIKE 'Java%';



