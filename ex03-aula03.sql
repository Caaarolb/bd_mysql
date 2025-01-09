CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
estoque INT NOT NULL,
categoria_id INT NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;


INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento de doenças'),
('Higiene', 'Produtos para cuidados pessoais'),
('Cosméticos', 'Produtos de beleza e estética'),
('Suplementos', 'Vitaminas e minerais'),
('Infantil', 'Produtos voltados para crianças');

SELECT * FROM tb_categorias;


INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Paracetamol', 10.00, 50, 1),
('Sabonete', 5.50, 100, 2),
('Shampoo', 20.00, 30, 3),
('Vitamina C', 25.00, 40, 4),
('Fralda', 50.00, 20, 5),
('Creme Hidratante', 35.00, 15, 3),
('Antibiótico', 80.00, 10, 1),
('Protetor Solar', 60.00, 25, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;


SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';
