CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_classes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

select * from tb_classes;

CREATE TABLE tb_personagens (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
nivel INT NOT NULL,
classe_id INT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

select * from tb_personagens;



INSERT INTO tb_classes (nome, descricao) VALUES
('Arqueiro', 'Especialista em ataques à distância'),
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Mago', 'Especialista em magia'),
('Ladino', 'Especialista em furtividade'),
('Paladino', 'Especialista em cura e defesa');

select * from tb_classes;

INSERT INTO tb_personagens (nome, ataque, defesa, nivel, classe_id) VALUES
('Legolas', 2500, 1500, 10, 1),
('Gimli', 2000, 3000, 15, 2),
('Gandalf', 3000, 1000, 20, 3),
('Frodo', 1200, 800, 5, 4),
('Aragorn', 2200, 2000, 18, 2),
('Saruman', 2800, 900, 19, 3),
('Boromir', 2100, 2500, 17, 2),
('Elrond', 2600, 1800, 16, 5);

select * from tb_personagens;

-- poder de ataque maior > 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- poder de defesa no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- possui a letra 'C'
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome, c.descricao AS classe_descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

select * from tb_personagens;
select * from tb_classes;


SELECT p.*, c.nome AS classe_nome, c.descricao AS classe_descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';