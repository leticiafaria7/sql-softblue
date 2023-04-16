CREATE DATABASE cursos_softblue;

USE cursos_softblue;

CREATE TABLE alunos
(
	id int unsigned not null auto_increment,
    nome varchar(64) not null,
    endereco varchar(230) not null,
    email varchar(128) not null,
    PRIMARY KEY (id)
);

CREATE TABLE tipo_curso
(
	id int unsigned not null auto_increment,
    tipo varchar(32) not null,
    PRIMARY KEY (id)
);

CREATE TABLE professores
(
	id int unsigned not null auto_increment,
    nome varchar(64) not null,
    telefone varchar(9) null,
    PRIMARY KEY (id)
);

CREATE TABLE cursos
(
	id int unsigned not null auto_increment,
    curso varchar(64) not null,
    id_tipo integer unsigned not null,
    id_professor int unsigned not null,
    valor double not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_cursos_tipo FOREIGN KEY (id_tipo) REFERENCES tipo_curso (id),
    CONSTRAINT fk_cursos_professor FOREIGN KEY (id_professor) REFERENCES professores (id)
);

CREATE TABLE compras
(
	id int unsigned not null auto_increment,
    id_aluno int unsigned not null,
    data_hora datetime not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_compras_aluno FOREIGN KEY (id_aluno) REFERENCES alunos (id)
);

CREATE TABLE compras_detalhe
(
	id_compra int unsigned not null,
    id_curso int unsigned not null,
    valor double not null,
    PRIMARY KEY (id_compra, id_curso),
    CONSTRAINT fk_compras_curso FOREIGN KEY (id_compra) REFERENCES compras (id),
    CONSTRAINT fk_id_curso FOREIGN KEY (id_curso) REFERENCES cursos (id)
);




