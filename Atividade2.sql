
CREATE DATABASE estoque;

USE estoque;

CREATE TABLE produto (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

INSERT INTO produto (id, nome, preco, categoria) VALUES
(1, 'Nintendo Switch 2', 4599.99, 'Eletrônicos'),
(2, 'Hack de Agachamento', 6899.50, 'Móveis'),
(3, 'Playstation 5', 3399.90, 'Eletrônicos');

SELECT * FROM produto;

SELECT * FROM produto WHERE categoria = 'Eletrônicos';

SELECT COUNT(*) AS total_produto FROM produto;

SELECT * FROM produto