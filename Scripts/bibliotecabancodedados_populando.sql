INSERT INTO Autor (id, nome, pais_de_origem, data_nascimento)
	VALUES
  (1, 'Joao Maria', 'Estados Unidos', '1980-05-15'),
  (2, 'Maria Aparecida', 'Brasil', '1975-09-20'),
  (3, 'Michael Lee', 'Canadá', '1988-11-10'),
  (4, 'Albert Jose', 'Alemanha', '1992-03-25'),
  (5, 'Luiz Martinez', 'Espanha', '1983-07-12');
  
INSERT INTO Editora (id, nome, localizacao, ano_fundacao)
	VALUES
  (1, 'Editora Books', 'Rua das Letras, 123', 1990),
  (2, 'Publicações Editora', 'Avenida das Páginas, 456', 1985),
  (3, 'Globo Edicoes', 'Praça dos Escritores, 789', 1998),
  (4, 'Intrinseca', 'Rua dos Livros, 1010', 1995),
  (5, 'Livro e Arte', 'Avenida Literária, 222', 2009);

INSERT INTO Livro (id, titulo, autor_id, editora_id, genero, ano_publicacao, disponivel)
	VALUES
  (1, 'A Mumia', 1, 1, 'Fantasia', 2000, true),
  (2, 'A Grande Aventura', 2, 2, 'Aventura', 2005, true),
  (3, 'O Misterio no Pantano', 3, 3, 'Misterio', 2010, true),
  (4, 'As Cronicas de Melody', 4, 4, 'Fantasia', 2015, true),
  (5, 'A Saga do Desconhecido', 5, 5, 'Sci-Fi', 2020, true);

INSERT INTO Cliente (id, nome, email, endereco, telefone)
	VALUES
  (1, 'Ana Silva', 'ana.silva@email.com', 'Rua das Flores, 100', '(45)456-7890'),
  (2, 'Marcos Oliveira', 'marcos.oliveira@email.com', 'Avenida dos Pássaros, 200', '(97)654-3210'),
  (3, 'Isabella Santos', 'isabella.santos@email.com', 'Praça da Liberdade, 300', '(11)222-3333'),
  (4, 'Arthur Gomes', 'arthur.gomes@email.com', 'Rua das Estrelas, 400', '(44)555-6666'),
  (5, 'Luana Rodrigues', 'luana.rodrigues@email.com', 'Avenida dos Sonhos, 500', '(77)888-9999');

INSERT INTO Emprestimo (id, data_emprestimo, data_devolucao, livro_id, cliente_id)
	VALUES
  (1, '2023-07-01', '2023-07-15', 1, 1),
  (2, '2023-07-02', '2023-07-16', 2, 2),
  (3, '2023-07-03', '2023-07-17', 3, 3),
  (4, '2023-07-04', '2023-07-18', 4, 4),
  (5, '2023-07-05', '2023-07-19', 5, 5);