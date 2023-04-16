USE cursos_softblue;

-- Crie uma visão que traga o título e preço somente dos cursos de programação da Softblue;
CREATE VIEW cursos_programacao AS
SELECT cursos.curso, cursos.valor FROM cursos 
LEFT JOIN tipo_curso ON cursos.id_tipo = tipo_curso.id
WHERE tipo = 'Programação';

SELECT * FROM cursos_programacao;

-- Crie uma visão que traga os títulos dos cursos, tipo do curso e nome do instrutor;
CREATE VIEW cursos_detalhe AS
SELECT cursos.curso, tipo_curso.tipo, professores.nome AS instrutor FROM cursos 
LEFT JOIN tipo_curso ON cursos.id_tipo = tipo_curso.id
LEFT JOIN professores ON cursos.id_professor = professores.id;

SELECT * FROM cursos_detalhe;

-- Crie uma visão que exiba os pedidos realizados, informando o nome do aluno, data e código do pedido;
CREATE VIEW compras_aluno AS
SELECT compras.id, alunos.nome AS aluno, compras.data_hora FROM compras
LEFT JOIN alunos ON compras.id_aluno = alunos.id;

SELECT * FROM compras_aluno;




