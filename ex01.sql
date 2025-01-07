-- Criar o banco de dados
CREATE DATABASE ServicoRH;
USE ServicoRH;

-- Tabela de departamentos
CREATE TABLE Departamentos (
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255)
);

-- Tabela de cargos
CREATE TABLE Cargos (
id_cargo INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
salario DECIMAL(10, 2) NOT NULL,
id_departamento INT,
FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

-- Tabela de colaboradores
CREATE TABLE Colaboradores (
id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL,
cpf VARCHAR(14) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
telefone VARCHAR(15),
data_admissao DATE NOT NULL,
id_cargo INT,
FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)
);

-- Tabela de endereços dos colaboradores
CREATE TABLE Enderecos (
id_endereco INT AUTO_INCREMENT PRIMARY KEY,
id_colaborador INT,
rua VARCHAR(100) NOT NULL,
numero VARCHAR(10) NOT NULL,
complemento VARCHAR(50),
bairro VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado VARCHAR(2) NOT NULL,
cep VARCHAR(9) NOT NULL,
FOREIGN KEY (id_colaborador) REFERENCES Colaboradores(id_colaborador)
);

-- Tabela de benefícios dos colaboradores
CREATE TABLE Beneficios (
id_beneficio INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255)
);

-- Tabela de relação entre colaboradores e benefícios
CREATE TABLE Colaboradores_Beneficios (
id_colaborador INT,
id_beneficio INT,
PRIMARY KEY (id_colaborador, id_beneficio),
FOREIGN KEY (id_colaborador) REFERENCES Colaboradores(id_colaborador),
FOREIGN KEY (id_beneficio) REFERENCES Beneficios(id_beneficio)
);

SELECT * FROM cargos;

DESCRIBE Cargos;
SHOW TABLES;

INSERT INTO Departamentos (nome, descricao) VALUES 
('Recursos Humanos', 'Gerencia as políticas de pessoal da empresa'),
('Tecnologia da Informação', 'Responsável pelos sistemas e infraestrutura de TI'),
('Financeiro', 'Gerencia as finanças da empresa');

INSERT INTO Cargos (nome, salario, id_departamento) VALUES 
('Analista de RH', 3500.00, 1),
('Desenvolvedor Fullstack', 7000.00, 2),
('Analista Financeiro', 4500.00, 3);

INSERT INTO Colaboradores (nome, sobrenome, data_nascimento, cpf, email, telefone, data_admissao, id_cargo) VALUES 
('Ana', 'Silva', '1990-05-15', '123.456.789-00', 'ana.silva@empresa.com', '(11) 98765-4321', '2020-01-10', 1),
('João', 'Pereira', '1988-08-20', '987.654.321-00', 'joao.pereira@empresa.com', '(11) 91234-5678', '2019-03-15', 2),
('Maria', 'Oliveira', '1995-02-25', '456.789.123-00', 'maria.oliveira@empresa.com', '(11) 99876-5432', '2021-07-01', 3);


INSERT INTO Enderecos (id_colaborador, rua, numero, complemento, bairro, cidade, estado, cep) VALUES 
(1, 'Rua das Flores', '123', 'Apto 12', 'Jardim Primavera', 'São Paulo', 'SP', '12345-678'),
(2, 'Avenida Central', '456', NULL, 'Centro', 'Rio de Janeiro', 'RJ', '23456-789'),
(3, 'Travessa dos Pinheiros', '789', 'Casa', 'Bairro Novo', 'Curitiba', 'PR', '34567-890');

INSERT INTO Beneficios (nome, descricao) VALUES 
('Vale Refeição', 'Auxílio para alimentação durante o trabalho'),
('Plano de Saúde', 'Plano de saúde corporativo'),
('Auxílio Transporte', 'Reembolso de transporte público ou vale combustível');

SELECT * FROM Colaboradores;
SELECT * FROM cargos;
DROP TABLE cargos;

-- deletar duplicados
DELETE FROM Cargos WHERE id_cargo = 3;

SELECT * FROM departamentos;
DELETE FROM departamentos WHERE id_departamento = 6;

SELECT * FROM enderecos;
SELECT * FROM beneficios;

INSERT INTO Colaboradores_Beneficios (id_colaborador, id_beneficio) VALUES 
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 3);

SELECT * FROM colaboradores_beneficios;

SHOW TABLES;
DESCRIBE enderecos;

-- Retorno de coloaboradores com salario maior que 2000    
SELECT 
Colaboradores.nome AS Nome,
Colaboradores.sobrenome AS Sobrenome,
Cargos.nome AS Cargo,
Cargos.salario AS Salario
FROM 
Colaboradores
INNER JOIN 
Cargos
ON 
Colaboradores.id_cargo = Cargos.id_cargo
WHERE 
Cargos.salario > 2000;

-- Retorno de coloaboradores com salario menor que 2000    
SELECT 
Colaboradores.nome AS Nome,
Colaboradores.sobrenome AS Sobrenome,
Cargos.nome AS Cargo,
Cargos.salario AS Salario
FROM 
Colaboradores
INNER JOIN 
Cargos
ON 
Colaboradores.id_cargo = Cargos.id_cargo
WHERE 
Cargos.salario < 2000;
    

-- troca de salario 
UPDATE Cargos
SET salario = 1900.15
WHERE id_departamento = 1;

UPDATE Cargos
SET salario = 7700.00
WHERE id_departamento = 2;





