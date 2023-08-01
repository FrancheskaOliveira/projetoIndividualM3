
# dbdiagram: https://dbdiagram.io/d/64c8fb9702bd1c4a5e0d2419

# -------- Criação do banco de dados -------- #
CREATE DATABASE IF NOT EXISTS biblioteca; 
USE biblioteca;

# -------- Criação da tabela Autor para conter as informações dos autores -------- #
CREATE TABLE `Autor` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR(100),
  `pais_de_origem` VARCHAR(100),
  `data_nascimento` DATE
);

# -------- Criação da tabela Editora para conter as informações das editoras -------- #
CREATE TABLE `Editora` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR(100),
  `localizacao` VARCHAR(200),
  `ano_fundacao` INT
);

# -------- Criação da tabela Livro para conter as informações dos livros -------- #
CREATE TABLE `Livro` (
  `id` INT PRIMARY KEY,
  `titulo` VARCHAR(200),
  `autor_id` INT,
  `editora_id` INT,
  `genero` VARCHAR(100),
  `ano_publicacao` INT,
  `disponivel` BOOLEAN,
  FOREIGN KEY (autor_id) REFERENCES Autor(id),
  FOREIGN KEY (editora_id) REFERENCES Editora(id)
);

# -------- Criação da tabela Cliente para conter as informações dos clientes -------- #
CREATE TABLE `Cliente` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR(100),
  `email` VARCHAR(100),
  `endereco` VARCHAR(200),
  `telefone` VARCHAR(20)
);

# -------- Criação da tabela Emprestimo para conter as informações dos emprestimos -------- #
CREATE TABLE `Emprestimo` (
  `id` INT PRIMARY KEY,
  `data_emprestimo` DATE,
  `data_devolucao` DATE,
  `livro_id` INT,
  `cliente_id` INT,
  FOREIGN KEY (livro_id) REFERENCES Livro(id),
  FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);