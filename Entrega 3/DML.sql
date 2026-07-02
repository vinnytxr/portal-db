-- DML: Entrega 3.2

USE PortalAulasPI;

-- Usuários
INSERT INTO USUARIO VALUES (1, 'Carlos Silva', 'carlos.silva@email.com', 'senha123');
INSERT INTO USUARIO VALUES (2, 'Maria Souza', 'maria.souza@email.com', 'senha456');
INSERT INTO USUARIO VALUES (3, 'João Pereira', 'joao.pereira@email.com', 'senha789');
INSERT INTO USUARIO VALUES (4, 'Ana Oliveira', 'ana.oliveira@email.com', 'senha321');
INSERT INTO USUARIO VALUES (5, 'Pedro Santos', 'pedro.santos@email.com', 'senha654');
INSERT INTO USUARIO VALUES (6, 'Juliana Costa', 'juliana.costa@email.com', 'senha987');
INSERT INTO USUARIO VALUES (7, 'Lucas Almeida', 'lucas.almeida@email.com', 'senha111');
INSERT INTO USUARIO VALUES (8, 'Fernanda Lima', 'fernanda.lima@email.com', 'senha222');
INSERT INTO USUARIO VALUES (9, 'Ricardo Gomes', 'ricardo.gomes@email.com', 'senha333');
INSERT INTO USUARIO VALUES (10, 'Patrícia Rocha', 'patricia.rocha@email.com', 'senha444');

-- Alunos
INSERT INTO ALUNO VALUES (101, 1, 'A2026001', '2000-05-10');
INSERT INTO ALUNO VALUES (102, 2, 'A2026002', '1999-11-20');
INSERT INTO ALUNO VALUES (103, 3, 'A2026003', '2001-07-15');
INSERT INTO ALUNO VALUES (104, 4, 'A2026004', '2002-03-30');
INSERT INTO ALUNO VALUES (105, 5, 'A2026005', '2000-09-25');
INSERT INTO ALUNO VALUES (106, 6, 'A2026006', '1998-12-05');
INSERT INTO ALUNO VALUES (107, 7, 'A2026007', '2003-01-18');
INSERT INTO ALUNO VALUES (108, 8, 'A2026008', '2001-11-11');
INSERT INTO ALUNO VALUES (109, 9, 'A2026009', '1999-04-22');
INSERT INTO ALUNO VALUES (110, 10, 'A2026010', '2002-06-14');

-- Professores
INSERT INTO PROFESSOR VALUES (201, 3, 'Matemática', 'Mestrado');
INSERT INTO PROFESSOR VALUES (202, 4, 'Informática', 'Doutorado');
INSERT INTO PROFESSOR VALUES (203, 5, 'História', 'Mestrado');
INSERT INTO PROFESSOR VALUES (204, 6, 'Física', 'Doutorado');
INSERT INTO PROFESSOR VALUES (205, 7, 'Química', 'Mestrado');
INSERT INTO PROFESSOR VALUES (206, 8, 'Biologia', 'Mestrado');
INSERT INTO PROFESSOR VALUES (207, 9, 'Geografia', 'Mestrado');
INSERT INTO PROFESSOR VALUES (208, 10, 'Português', 'Doutorado');
INSERT INTO PROFESSOR VALUES (209, 1, 'Inglês', 'Mestrado');
INSERT INTO PROFESSOR VALUES (210, 2, 'Educação Física', 'Mestrado');

-- Cursos
INSERT INTO CURSO VALUES (301, 'Álgebra Linear', 60, 'Curso de Álgebra para iniciantes', 201);
INSERT INTO CURSO VALUES (302, 'Banco de Dados', 80, 'Modelagem e SQL', 202);
INSERT INTO CURSO VALUES (303, 'História Antiga', 40, 'Civilizações clássicas', 203);
INSERT INTO CURSO VALUES (304, 'Física Moderna', 70, 'Relatividade e Mecânica Quântica', 204);
INSERT INTO CURSO VALUES (305, 'Química Orgânica', 50, 'Estruturas e reações orgânicas', 205);
INSERT INTO CURSO VALUES (306, 'Biologia Celular', 45, 'Estrutura e função das células', 206);
INSERT INTO CURSO VALUES (307, 'Geografia Humana', 55, 'Distribuição populacional e recursos naturais', 207);
INSERT INTO CURSO VALUES (308, 'Literatura Brasileira', 60, 'Autores e obras clássicas', 208);
INSERT INTO CURSO VALUES (309, 'Inglês Avançado', 90, 'Conversação e escrita acadêmica', 209);
INSERT INTO CURSO VALUES (310, 'Estrutura de Dados', 85, 'Listas, árvores e grafos', 202);

-- Matrículas
INSERT INTO MATRICULA VALUES (401, '2026-03-01', 'Ativa', 8.5, 101, 301);
INSERT INTO MATRICULA VALUES (402, '2026-03-02', 'Ativa', 9.0, 102, 302);
INSERT INTO MATRICULA VALUES (403, '2026-03-03', 'Ativa', 7.5, 103, 303);
INSERT INTO MATRICULA VALUES (404, '2026-03-04', 'Ativa', 8.0, 104, 304);
INSERT INTO MATRICULA VALUES (405, '2026-03-05', 'Inativa', 6.5, 105, 305);
INSERT INTO MATRICULA VALUES (406, '2026-03-06', 'Ativa', 9.2, 106, 306);
INSERT INTO MATRICULA VALUES (407, '2026-03-07', 'Ativa', 7.8, 107, 307);
INSERT INTO MATRICULA VALUES (408, '2026-03-08', 'Ativa', 8.9, 108, 308);
INSERT INTO MATRICULA VALUES (409, '2026-03-09', 'Ativa', 9.5, 101, 309);
INSERT INTO MATRICULA VALUES (410, '2026-03-10', 'Inativa', 7.0, 102, 310);

-- Dependentes
INSERT INTO DEPENDENTES VALUES (501, 'João Filho', 12);
INSERT INTO DEPENDENTES VALUES (502, 'Ana Clara', 8);
INSERT INTO DEPENDENTES VALUES (503, 'Pedro Henrique', 15);
INSERT INTO DEPENDENTES VALUES (504, 'Mariana Lopes', 10);
INSERT INTO DEPENDENTES VALUES (505, 'Lucas Gabriel', 7);
INSERT INTO DEPENDENTES VALUES (506, 'Beatriz Souza', 14);
INSERT INTO DEPENDENTES VALUES (507, 'Felipe Andrade', 9);
INSERT INTO DEPENDENTES VALUES (508, 'Carolina Dias', 11);
INSERT INTO DEPENDENTES VALUES (509, 'Rafael Martins', 13);
INSERT INTO DEPENDENTES VALUES (510, 'Isabela Ferreira', 6);
