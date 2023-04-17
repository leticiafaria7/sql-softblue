USE cursos_softblue;

-- Utilizando subquery, exiba uma lista com os nomes dos cursos disponibilizados pela Softblue informando para cada curso qual o seu menor valor de venda já praticado;
SELECT cursos.curso, MIN(compras_detalhe.valor) AS valor_minimo FROM cursos 
LEFT JOIN compras_detalhe ON cursos.id = compras_detalhe.id_curso
GROUP BY curso;
SELECT * FROM compras_detalhe;

-- outra forma
SELECT curso, 
(SELECT MIN(valor) FROM compras_detalhe WHERE compras_detalhe.id_curso = cursos.id) AS menor_valor 
FROM cursos;

-- Utilizando subquery e o parâmetro IN, exiba os nomes dos cursos disponibilizados pela Softblue cujo tipo de curso seja 'Programação';
SELECT cursos.curso FROM cursos 
LEFT JOIN tipo_curso ON cursos.id_tipo = tipo_curso.id 
WHERE tipo_curso.tipo IN ('Programação');

-- Utilizando subquery e o parâmetro EXISTS, exiba novamente os nomes dos cursos disponibilizados pela Softblue cujo tipo de curso seja 'Programação';
SELECT curso FROM cursos
WHERE EXISTS (SELECT id FROM tipo_curso WHERE tipo_curso.id = cursos.id_tipo AND tipo_curso.tipo = 'Programação');

-- Exiba uma lista com os nomes dos instrutores da Softblue e ao lado o total acumulado das vendas referente aos cursos pelo qual o instrutor é responsável;
SELECT professores.nome AS professor, SUM(compras_detalhe.valor) AS total_acumulado FROM cursos
LEFT JOIN professores ON cursos.id_professor = professores.id
LEFT JOIN compras_detalhe ON cursos.id = compras_detalhe.id_curso
GROUP BY professor;

-- Crie uma visão que exiba os nomes dos alunos e quanto cada um já comprou em cursos;
CREATE VIEW total_gasto_aluno AS
SELECT alunos.nome AS aluno, SUM(compras_detalhe.valor) AS valor_total_gasto FROM alunos
LEFT JOIN compras ON alunos.id = compras.id_aluno
LEFT JOIN compras_detalhe ON compras.id = compras_detalhe.id_compra
GROUP BY nome;

SELECT * FROM total_gasto_aluno

