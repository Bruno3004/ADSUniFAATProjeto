CR-- Criação do banco de dados Escola
CREATE DATABASE Escola;

-- Usar o banco de dados Escola
\c Escola;

-- Criação da tabela Professor
CREATE TABLE Professor (
    id_professor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Criação da tabela Turma
CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    id_professor INT NOT NULL REFERENCES Professor(id_professor),
    horario VARCHAR(100) NOT NULL
);

-- Criação da tabela Aluno
CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_turma INT NOT NULL REFERENCES Turma(id_turma),
    nome_responsavel VARCHAR(255) NOT NULL,
    telefone_responsavel VARCHAR(20) NOT NULL,
    email_responsavel VARCHAR(100) NOT NULL,
    informacoes_adicionais TEXT
);