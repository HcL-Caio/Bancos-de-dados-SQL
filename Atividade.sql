
CREATE DATABASE editora;

USE editora;

CREATE TABLE autores (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(100),
    titulo VARCHAR(100),
    ano_publicacao INT
);

CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    id_autor INT,
    ano_publicacao INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO autores (id_autor, nome, titulo, ano_publicacao) VALUES
(1, 'Todd McFarlane', 'Escritor Americano', 1998),
(2, 'Robert Kirkman', 'Escritor Americano', 2018);

INSERT INTO livros (id_livro, titulo, id_autor, ano_publicacao) VALUES
(1, 'Spider-Man', 1, 1899),
(2, 'Invencible', 2, 1881),
(3, 'The Walking Dead', 2, 1977);

SELECT * FROM autores
