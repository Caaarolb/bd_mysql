# 📚 Atividades de Banco de Dados - Generation Brasil

Este repositório contém as atividades realizadas durante o módulo de Banco de Dados do curso de Desenvolvimento Fullstack JavaScript da **Generation Brasil**. As atividades abordam conceitos e práticas sobre bancos de dados relacionais, utilizando o **MySQL** como sistema de gerenciamento de banco de dados (SGBD).

## 🎯 Objetivo

O objetivo deste módulo é aperfeiçoar o aprendizado de bancos de dados relacionais, criando, manipulando e consultando dados através do MySQL. As atividades praticam a criação de tabelas, inserção de registros, consultas e atualizações de dados, além de explorar técnicas de modelagem e abstração de dados.

## 🗂️ Estrutura do Repositório

O repositório contém as seguintes atividades:

1. **Atividade 1 - Serviço de RH** 👩‍💼  
   Criação de um banco de dados para um serviço de RH de uma empresa, com tabelas e registros relacionados aos cargos e salários dos funcionários.
   
2. **Atividade 2 - E-commerce** 🛒  
   Criação de um banco de dados para um e-commerce, com tabelas e registros relacionados aos produtos e suas informações (preço, categoria, etc.).

3. **Atividade 3 - Escola** 🏫  
   Criação de um banco de dados para registro de estudantes de uma escola, com informações como nome, idade, notas e curso.

As queries para cada atividade estão salvas como arquivos `.SQL`.

## ⚙️ Como Rodar as Queries

### 🔧 Pré-requisitos  
   - MySQL instalado na sua máquina ou acesso a um servidor MySQL.
   
### 🚀 Passos  
   1. Clone este repositório em sua máquina.
   2. Acesse seu banco de dados MySQL.
   3. Crie um novo banco de dados utilizando o comando:
      ```sql
      CREATE DATABASE nome_do_banco;
      ```
   4. Importe ou execute os scripts `.SQL` que estão no repositório, utilizando o comando:
      ```sql
      source caminho_do_arquivo.sql;
      ```

## 💻 Exemplo de Consulta

🛍️ Consultas de Produtos (E-commerce)

```
-- Selecionar todos os produtos com preço maior que 500
SELECT * FROM produtos WHERE preco > 500;
```

```
-- Selecionar todos os produtos com preço menor que 500
SELECT * FROM produtos WHERE preco < 500;
```





