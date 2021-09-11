DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;

USE biblioteca

CREATE TABLE autor (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cidadeNascimento VARCHAR(50) NOT NULL,
    paisNascimento VARCHAR(15) NOT NULL,
    anoNascimento YEAR NOT NULL,
    anoFalecimento YEAR,
    biografia VARCHAR(1024) NOT NULL
);

CREATE TABLE livro (
    ISBN INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    numeroEdicao INTEGER NOT NULL,
    editora VARCHAR(50) NOT NULL,
    anoPublicacao YEAR NOT NULL
);

CREATE TABLE autoria (
    id_autor INTEGER NOT NULL,
    ISBN_livro INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY (id_autor, ISBN_livro),
    CONSTRAINT fk_autoria_autor FOREIGN KEY (id_autor) REFERENCES autor(id),
    CONSTRAINT fk_autoria_livro FOREIGN KEY (ISBN_livro) REFERENCES livro(ISBN)
);

CREATE TABLE exemplar (
    codigoExemplar INTEGER NOT NULL AUTO_INCREMENT,
    ISBN_livro INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY (codigoExemplar, ISBN_livro),
    CONSTRAINT fk_exemplar_livro FOREIGN KEY (ISBN_livro) REFERENCES livro(ISBN)
);

CREATE TABLE endereco (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    logradouro VARCHAR(35) NOT NULL,
    numero INTEGER NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    complemento VARCHAR(20) NOT NULL,
    cidade VARCHAR(15) NOT NULL,
    estado VARCHAR(2) NOT NULL
);

CREATE TABLE usuario (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(25) NOT NULL,
    endereco_id INTEGER NOT NULL,
    CONSTRAINT fk_usuario_endereco FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);

CREATE TABLE telefone (
    usuario_id INTEGER NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, telefone),
    CONSTRAINT fk_telefone_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE emprestimo (
    codigoEmprestimo INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dataEmprestimo DATETIME NOT NULL,
    diasEmprestado INTEGER NOT NULL,
    dataDevolucao DATETIME,
    id_usuario INTEGER NOT NULL,
    codigoExemplar INTEGER NOT NULL,
    CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    CONSTRAINT fk_emprestimo_exemplar FOREIGN KEY (codigoExemplar) REFERENCES exemplar(codigoExemplar)
);

CREATE TABLE multa (
    id INTEGER NOT NULL AUTO_INCREMENT,
    codigoEmprestimo INTEGER NOT NULL,
    pago BOOLEAN NOT NULL,
    diasAtraso INTEGER NOT NULL,
    taxaAtraso FLOAT NOT NULL,
    CONSTRAINT PRIMARY KEY (id, codigoEmprestimo),
    CONSTRAINT fk_multa_emprestimo FOREIGN KEY (codigoEmprestimo) REFERENCES emprestimo(codigoEmprestimo)
);