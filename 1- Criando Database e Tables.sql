CREATE DATABASE projsemanal;

USE projsemanal;

CREATE TABLE cursos (
	id int auto_increment primary key,
    nome varchar(100) NOT NULL,
    tipo varchar(100) NOT NULL  
);

CREATE TABLE turmas (
	id int auto_increment primary key,
	numero int NOT NULL,
    nome_turma varchar(100) NOT NULL,
    cursos_id int NOT NULL,
    foreign key (cursos_id) references cursos(id)
);

CREATE TABLE alunos (
	id int auto_increment primary key,
    cpf varchar(14) NOT NULL,
    nome varchar(100) NOT NULL,
    data_nascimento date NOT NULL,
    turmas_id int NOT NULL,
    foreign key (turmas_id) references turmas(id)
);