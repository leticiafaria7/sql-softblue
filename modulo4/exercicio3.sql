USE cursos_softblue;

-- Altere o endereço do aluno JOSÉ para 'Av. Brasil 778';
UPDATE alunos SET endereco = 'Av. Brasil 778' WHERE nome = 'José';
SELECT * FROM alunos;

-- Altere o e-mail do aluno CRIS para 'cristiano@softblue.com.br';
UPDATE alunos SET email = 'cristiano@softblue.com.br' WHERE nome = 'Cris';
SELECT * FROM alunos;

-- Aumente em 10% o valor dos cursos abaixo de 300;
UPDATE cursos SET valor = ROUND(valor * 1.1, 2) WHERE valor < 300;
SELECT * FROM cursos;

-- Altere o nome do curso de Php Básico para Php Fundamentos;
UPDATE cursos SET curso = 'PHP Fundamentos' WHERE curso = 'PHP Básico';
SELECT * FROM cursos;


