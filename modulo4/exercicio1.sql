USE cursos_softblue;

-- tabela tipo_curso
INSERT INTO tipo_curso (id, tipo) VALUES (1, 'Banco de dados');
INSERT INTO tipo_curso (id, tipo) VALUES (2, 'Programação');
INSERT INTO tipo_curso (id, tipo) VALUES (3, 'Modelagem de dados');

SELECT * FROM tipo_curso;

-- tabela professores
INSERT INTO professores (id, nome, telefone) VALUES (1, 'André Milani', '1111-1111');
INSERT INTO professores (id, nome, telefone) VALUES (2, 'Carlos Tosin', '1212-1212');

SELECT * FROM professores;

-- tabela cursos
INSERT INTO cursos (id, curso, id_tipo, id_professor, valor) VALUES (1, 'Java Fundamentos', 2, 2, 270);
INSERT INTO cursos (id, curso, id_tipo, id_professor, valor) VALUES (2, 'Java Avançado', 2, 2, 330);
INSERT INTO cursos (id, curso, id_tipo, id_professor, valor) VALUES (3, 'SQL Completo', 1, 1, 170);
INSERT INTO cursos (id, curso, id_tipo, id_professor, valor) VALUES (4, 'PHP Básico', 2, 1, 270);

SELECT * FROM cursos;

-- tabela alunos
INSERT INTO alunos (id, nome, endereco, email) VALUES (1, 'José', 'Rua XV de Novembro 72', 'jose@softblue.com.br');
INSERT INTO alunos (id, nome, endereco, email) VALUES (2, 'Wagner', 'Av. Paulista', 'wagner@softblue.com.br');
INSERT INTO alunos (id, nome, endereco, email) VALUES (3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@softblue.com.br');
INSERT INTO alunos (id, nome, endereco, email) VALUES (4, 'Cris', 'Rua Tauney 22', 'cris@softblue.com.br');
INSERT INTO alunos (id, nome, endereco, email) VALUES (5, 'Regina', 'Rua Salles 305', 'regina@softblue.com.br');
INSERT INTO alunos (id, nome, endereco, email) VALUES (6, 'Fernando', 'Av. Central 30', 'fernando@softblue.com.br');

SELECT * FROM alunos;

-- tabela compras
INSERT INTO compras (id, id_aluno, data_hora) VALUES (1, 2, '2010-04-15 11:23:32');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (2, 2, '2010-04-15 14:36:21');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (3, 3, '2010-04-16 11:17:45');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (4, 4, '2010-04-17 14:27:22');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (5, 5, '2010-04-18 11:18:19');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (6, 6, '2010-04-19 13:47:35');
INSERT INTO compras (id, id_aluno, data_hora) VALUES (7, 6, '2010-04-20 18:13:44');

SELECT * FROM compras;

-- tabela compras_detalhe
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (1, 1, 270);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (1, 2, 330);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (2, 1, 270);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (2, 2, 330);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (2, 3, 170);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (3, 4, 270);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (4, 2, 330);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (4, 4, 270);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (5, 3, 170);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (6, 3, 170);
INSERT INTO compras_detalhe (id_compra, id_curso, valor) VALUES (7, 4, 270);

SELECT * FROM compras_detalhe;


