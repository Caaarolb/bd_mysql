CREATE DATABASE Escola;
USE Escola;

CREATE TABLE estudantes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
idade INT,
nota DECIMAL(3, 1),
curso VARCHAR(50),
data_matricula DATE
);

SELECT * FROM estudantes;

INSERT INTO estudantes (nome, idade, nota, curso, data_matricula) VALUES
('João Silva', 16, 8.5, 'Matemática', '2024-02-15'),
('Maria Oliveira', 17, 6.2, 'Física', '2023-03-20'),
('Pedro Santos', 15, 9.0, 'Química', '2024-01-12'),
('Ana Souza', 16, 7.5, 'Matemática', '2024-02-25'),
('Carlos Lima', 18, 5.8, 'Biologia', '2023-08-10'),
('Mariana Costa', 17, 8.0, 'Física', '2023-09-05'),
('Lucas Pereira', 16, 6.7, 'Química', '2024-03-01'),
('Fernanda Alves', 15, 7.3, 'Biologia', '2024-01-22');

SELECT * FROM estudantes;


SELECT * FROM estudantes
WHERE nota > 7.0;

SELECT * FROM estudantes
WHERE nota < 7.0;

UPDATE estudantes
SET nota = 9.5
WHERE id = '5';


