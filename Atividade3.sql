CREATE DATABASE atividade3;

USE atividade3;

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade INT,
    valor DECIMAL(10,2), 
    categoria VARCHAR(50)
    
);

INSERT INTO produtos (id, nome, quantidade, valor, categoria) VALUES
(1, 'Televisão',1000, 1999.99, 'Eletrônicos'),
(2, 'Mouse',1000, 50.00, 'Informática'),
(3, 'Tablet',1000, 899.90, 'Eletrônicos'),
(4, 'Trasmissor',1000, 149.90, 'Obsoleto'),
(5, 'Telefone',1000, 349.50, 'Eletrônicos'),
(6, 'Monitor',1000, 1200.00, 'Informática'),
(7, 'Câmera',1000, 599.99, 'Eletrônicos'),
(8, 'Impressora',1000, 299.90, 'Eletrônicos'),
(9, 'Transistor',1000, 199.90, 'Obsoleto'),
(10, 'Geladeira',1000, 2499.00, 'Eletrodomésticos');

SELECT * FROM produtos 
WHERE categoria = 'Eletrônicos';

SELECT * FROM produtos 
WHERE nome LIKE 'T%';

SELECT COUNT(*) FROM produtos 
WHERE valor > 100 AND quantidade > 100
;

SELECT AVG(preco) AS media_precos 
FROM produtos;

UPDATE produtos 
SET preco = 75.90 
WHERE nome = 'Mouse';

SELECT * FROM produtos WHERE nome = 'Mouse';

DELETE FROM produtos 
WHERE categoria = 'Obsoleto';

SELECT * FROM produtos WHERE categoria = 'Obsoleto';

DROP TABLE produtos