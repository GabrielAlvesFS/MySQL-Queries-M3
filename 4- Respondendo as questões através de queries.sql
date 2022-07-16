USE projsemanal;

-- Query 1
SELECT * FROM entregas
	WHERE modulo = 1 AND conceito = 'Mais que pronto';
    
-- Query 2
SELECT turmas_id AS turma, COUNT(turmas_id) AS alunos_na_turma FROM alunos
	GROUP BY turmas_id;
    
-- Query 3
SELECT COUNT(conceito) AS quantidade_de_projetos FROM entregas
	WHERE conceito = 'Ainda não está pronto' OR conceito = 'Chegando lá';
    
-- Query 4
SELECT turmas_id AS turma, count(conceito) AS quantidade_de_projetos FROM alunos
	INNER JOIN entregas ON alunos.id = entregas.aluno_id
    WHERE conceito = 'Mais que pronto'
    GROUP BY turmas_id
    ORDER BY quantidade_de_projetos DESC
    LIMIT 1; 
    