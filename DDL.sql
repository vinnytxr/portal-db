-- DDL: Entrega 3.1

CREATE DATABASE IF NOT EXISTS PortalAulasDB;
USE PortalAulasDB;

DROP TABLE IF EXISTS DEPENDENTES;
DROP TABLE IF EXISTS CERTIFICADO;
DROP TABLE IF EXISTS FEEDBACK;
DROP TABLE IF EXISTS AVALIACAO;
DROP TABLE IF EXISTS PRESENCA;
DROP TABLE IF EXISTS MATRICULA;
DROP TABLE IF EXISTS AULA;
DROP TABLE IF EXISTS MODULO;
DROP TABLE IF EXISTS CURSO;
DROP TABLE IF EXISTS ADMIN;
DROP TABLE IF EXISTS PROFESSOR;
DROP TABLE IF EXISTS ALUNO;
DROP TABLE IF EXISTS USUARIO;

CREATE TABLE USUARIO (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE ALUNO (
    id_aluno INT PRIMARY KEY,
    id_usuario_FK INT,
    matricula_universitaria VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    FOREIGN KEY (id_usuario_FK) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE PROFESSOR (
    id_professor INT PRIMARY KEY,
    id_usuario_FK INT,
    especialidade VARCHAR(50),
    titulacao VARCHAR(50),
    FOREIGN KEY (id_usuario_FK) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE ADMIN (
    id_admin INT PRIMARY KEY,
    id_usuario_FK INT,
    cargo VARCHAR(50),
    nivel_acesso VARCHAR(20),
    FOREIGN KEY (id_usuario_FK) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE CURSO (
    id_curso INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    descricao TEXT,
    id_professor_FK INT,
    FOREIGN KEY (id_professor_FK) REFERENCES PROFESSOR(id_professor)
);

CREATE TABLE MODULO (
    id_modulo INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ordem INT NOT NULL,
    carga_horaria INT,
    id_curso_FK INT,
    FOREIGN KEY (id_curso_FK) REFERENCES CURSO(id_curso)
);

CREATE TABLE AULA (
    id_aula INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracao INT,
    conteudo TEXT,
    id_modulo_FK INT,
    FOREIGN KEY (id_modulo_FK) REFERENCES MODULO(id_modulo)
);

CREATE TABLE MATRICULA (
    id_matricula INT PRIMARY KEY,
    data_matricula DATE NOT NULL,
    status VARCHAR(20),
    nota_final DECIMAL(5,2),
    id_aluno_FK INT,
    id_curso_FK INT,
    FOREIGN KEY (id_aluno_FK) REFERENCES ALUNO(id_aluno),
    FOREIGN KEY (id_curso_FK) REFERENCES CURSO(id_curso)
);

CREATE TABLE PRESENCA (
    id_presenca INT PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(20),
    id_aluno_FK INT,
    id_aula_FK INT,
    FOREIGN KEY (id_aluno_FK) REFERENCES ALUNO(id_aluno),
    FOREIGN KEY (id_aula_FK) REFERENCES AULA(id_aula)
);

CREATE TABLE AVALIACAO (
    id_avaliacao INT PRIMARY KEY,
    tipo VARCHAR(50),
    nota DECIMAL(5,2),
    data DATE,
    id_aluno_FK INT,
    id_curso_FK INT,
    FOREIGN KEY (id_aluno_FK) REFERENCES ALUNO(id_aluno),
    FOREIGN KEY (id_curso_FK) REFERENCES CURSO(id_curso)
);

CREATE TABLE FEEDBACK (
    id_feedback INT PRIMARY KEY,
    comentario TEXT,
    data DATE,
    nota_satisfacao INT,
    id_avaliacao_FK INT,
    FOREIGN KEY (id_avaliacao_FK) REFERENCES AVALIACAO(id_avaliacao)
);

CREATE TABLE CERTIFICADO (
    id_certificado INT PRIMARY KEY,
    data_emissao DATE,
    codigo_validacao VARCHAR(50) UNIQUE,
    id_matricula_FK INT,
    FOREIGN KEY (id_matricula_FK) REFERENCES MATRICULA(id_matricula)
);

CREATE TABLE DEPENDENTES (
    id_dependente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL
);