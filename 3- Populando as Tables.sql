USE projsemanal;

DESCRIBE cursos;
DESCRIBE turmas;
DESCRIBE alunos;
DESCRIBE entregas;

INSERT INTO cursos (nome, tipo) VALUES 
('Front-End', 'Online'),
('Back-End', 'Online'), 
('DevOps', 'Presencial');
SELECT * FROM cursos;

INSERT INTO turmas (numero, nome_turma, cursos_id) VALUES
(10, 'Pintadores de botões', 1),
(15, 'Reis da lógica', 2),
(20, 'A galera dos processos', 3);
SELECT * FROM turmas;

INSERT INTO alunos (cpf, nome, data_nascimento, turmas_id, email) VALUES
('000.000.000-00', 'Gabriel Alves', '2003-10-14', 2, 'GabrielAlves@gmail.com'),
('111.111.111-11', 'Magnus Arthur', '2002-02-21', 1, 'MagnusArthur@gmail.com'),
('222.222.222-22', 'Bruna Xavier', '2000-02-05', 3, 'BrunaXavier@gmail.com'),
('333.333.333-33', 'Bruno Birth', '1999-02-18', 3, 'BrunoBirth@gmail.com');
SELECT * FROM alunos;

INSERT INTO entregas VALUES
(1, 3, 'https://websitedocaralho.com.br/', 'Mais que pronto'),
(2, 3, 'https://websitedocaralho.com.br/', 'Mais que pronto'),
(3, 3, 'https://websitedocaralho.com.br/', 'Pronto'),
(4, 3, 'https://websitedocaralho.com.br/', 'Pronto');
SELECT * FROM entregas;

