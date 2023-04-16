USE cursos_softblue;

-- Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10 caracteres;
ALTER TABLE alunos ADD data_nascimento varchar(10);

-- Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE;
ALTER TABLE alunos CHANGE COLUMN data_nascimento nascimento date null;

-- Crie um novo índice na tabela ALUNO, para o campo ALUNO;
CREATE INDEX lista_alunos ON alunos (id);

-- Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres;
ALTER TABLE professores ADD email varchar(100);

-- Crie um novo índice na tabela CURSO, para o campo INSTRUTOR;
CREATE INDEX instrutores ON cursos (id_professor);

-- Remova o campo EMAIL da tabela INSTRUTOR;
ALTER TABLE professores DROP email;
