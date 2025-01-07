CREATE DATABASE Ecommerce;
USE Ecommerce;

CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
descricao TEXT,
preco DECIMAL(10, 2),
categoria VARCHAR(50),
quantidade_em_estoque INT
);

SELECT * FROM produtos;

INSERT INTO produtos (nome, descricao, preco, categoria, quantidade_em_estoque) VALUES
('Smartphone XYZ', 'Smartphone com 6GB de RAM e 128GB de armazenamento', 1999.99, 'Eletrônicos', 50),
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído', 799.99, 'Acessórios', 150),
('Camiseta Estampada', 'Camiseta de algodão com estampa de anime', 39.90, 'Roupas', 200),
('Notebook Dell', 'Notebook com processador i7 e 16GB de RAM', 4500.00, 'Informática', 30),
('Cadeira Ergonômica', 'Cadeira confortável para escritório', 350.00, 'Móveis', 75),
('Geladeira Brastemp', 'Geladeira frost-free de 400L', 2499.99, 'Eletrodomésticos', 20),
('Micro-ondas Panasonic', 'Micro-ondas de 20L com 10 níveis de potência', 899.90, 'Eletrodomésticos', 40),
('Tênis Running', 'Tênis de corrida leve e confortável', 299.99, 'Calçados', 120);


SELECT * FROM produtos
WHERE preco > 500;

SELECT * FROM produtos
WHERE preco < 500;

UPDATE produtos
SET preco = 4200.00
WHERE id = 4;





