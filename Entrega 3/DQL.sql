-- DQL: Entrega 3.3

USE PortalAulasPI;

-- Consulta 1: alunos com nota acima da média geral
-- Busca os alunos cuja nota_final é maior que a média de todas as matrículas
SELECT u.nome, m.nota_final
FROM matricula m
JOIN aluno a ON m.id_aluno_FK = a.id_aluno
JOIN usuario u ON a.id_usuario_FK = u.id_usuario
WHERE m.nota_final > (SELECT AVG(nota_final) FROM matricula);

-- Consulta 2: cursos sem matrículas
-- Lista cursos que não possuem nenhum aluno matriculado
SELECT c.titulo
FROM curso c
WHERE c.id_curso NOT IN (SELECT id_curso_FK FROM matricula);

-- Consulta 3: professores com mais de 1 curso
-- Busca professores que ministram mais de um curso
SELECT p.id_professor, u.nome, COUNT(c.id_curso) AS qtd_cursos
FROM professor p
JOIN usuario u ON p.id_usuario_FK = u.id_usuario
JOIN curso c ON p.id_professor = c.id_professor_FK
GROUP BY p.id_professor, u.nome
HAVING COUNT(c.id_curso) > 1;

-- Consulta 4: alunos matriculados em mais de um curso
-- Lista os alunos que possuem mais de uma matrícula
SELECT u.nome, COUNT(m.id_matricula) AS qtd_matriculas
FROM matricula m
JOIN aluno a ON m.id_aluno_FK = a.id_aluno
JOIN usuario u ON a.id_usuario_FK = u.id_usuario
GROUP BY u.nome
HAVING COUNT(m.id_matricula) > 1;

-- Consulta 5: cursos com carga horária acima da média
-- Busca cursos cuja carga_horaria é maior que a média de todos os cursos
SELECT c.titulo, c.carga_horaria
FROM curso c
WHERE c.carga_horaria > (SELECT AVG(carga_horaria) FROM curso);

-- Consulta 6: união de alunos ativos e inativos
-- Lista todos os alunos, separando os que têm matrícula ativa e os que têm matrícula inativa
SELECT u.nome, 'Ativo' AS status
FROM matricula m
JOIN aluno a ON m.id_aluno_FK = a.id_aluno
JOIN usuario u ON a.id_usuario_FK = u.id_usuario
WHERE m.status = 'Ativa'
UNION
SELECT u.nome, 'Inativo' AS status
FROM matricula m
JOIN aluno a ON m.id_aluno_FK = a.id_aluno
JOIN usuario u ON a.id_usuario_FK = u.id_usuario
WHERE m.status <> 'Ativa';
