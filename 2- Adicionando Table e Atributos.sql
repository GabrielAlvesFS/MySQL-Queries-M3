USE projsemanal;

CREATE TABLE entregas (
	aluno_id int NOT NULL,
    modulo int NOT NULL,
	link_repositorio varchar(150) NOT NULL,
    conceito varchar(50),
    foreign key (aluno_id) references alunos(id)
);

ALTER TABLE alunos 
ADD email varchar(255) NOT NULL;

DESCRIBE alunos;