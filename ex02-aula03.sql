CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;


CREATE TABLE tb_pizzas (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
categoria_id INT NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_pizzas;


INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas tradicionais com sabores clássicos'),
('Especial', 'Pizzas com combinações especiais'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Premium', 'Pizzas gourmet com ingredientes selecionados');

SELECT * FROM tb_categorias;


INSERT INTO tb_pizzas (nome, preco, tamanho, categoria_id) VALUES
('Calabresa', 40.00, 'Grande', 1),
('Quatro Queijos', 45.50, 'Média', 1),
('Chocolate', 50.00, 'Pequena', 3),
('Margherita', 42.00, 'Grande', 4),
('Frango com Catupiry', 47.00, 'Grande', 2),
('Pepperoni', 55.00, 'Grande', 5),
('Brigadeiro', 48.00, 'Média', 3),
('Veggie', 60.00, 'Grande', 4);

SELECT * FROM tb_pizzas;


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;


SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';
