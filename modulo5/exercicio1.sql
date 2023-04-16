USE cursos_softblue;

-- Exiba uma lista com os títulos dos cursos da Softblue e o tipo de curso ao lado;
SELECT cursos.curso, tipo_curso.tipo 
FROM cursos 
LEFT JOIN tipo_curso ON cursos.id_tipo = tipo_curso.id;

-- Exiba uma lista com os títulos dos cursos da Softblue, tipo do curso, nome do instrutor responsável pelo mesmo e telefone;
SELECT cursos.curso,  tipo_curso.tipo, professores.nome AS instrutor, professores.telefone
FROM cursos 
LEFT JOIN tipo_curso ON cursos.id_tipo = tipo_curso.id
LEFT JOIN professores ON cursos.id_professor = professores.id;

-- Exiba uma lista com o código e data e hora dos pedidos e os códigos dos cursos de cada pedido;
SELECT compras_detalhe.id_compra, compras.data_hora, cursos.id FROM compras_detalhe
LEFT JOIN compras ON compras_detalhe.id_compra = compras.id
LEFT JOIN cursos ON compras_detalhe.id_curso = cursos.id;

-- Exiba uma lista com o código e data e hora dos pedidos e os títulos dos cursos de cada pedido;
SELECT compras_detalhe.id_compra, compras.data_hora, cursos.curso FROM compras_detalhe
LEFT JOIN compras ON compras_detalhe.id_compra = compras.id
LEFT JOIN cursos ON compras_detalhe.id_curso = cursos.id;

-- Exiba uma lista com o código e data e hora dos pedidos, nome do aluno e os títulos dos cursos de cada pedido
SELECT compras_detalhe.id_compra, compras.data_hora, alunos.nome AS nome_aluno, cursos.curso FROM compras_detalhe
LEFT JOIN compras ON compras_detalhe.id_compra = compras.id
LEFT JOIN alunos ON compras.id_aluno = alunos.id
LEFT JOIN cursos ON compras_detalhe.id_curso = cursos.id;


