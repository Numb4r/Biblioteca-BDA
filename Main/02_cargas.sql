USE biblioteca

INSERT INTO autor (nome, cidadeNascimento, paisNascimento, anoNascimento, biografia) VALUES
  ("Charlie Donlea", "Divinópolis", "Brasil", "1985", "Biografia teste"),
  ("George S Clason", "Divinópolis", "Brasil", "1990", "Biografia teste"),
  ("Thiago Nigro", "Divinópolis", "Brasil", "1977", "Biografia teste"),
  ("Clarissa Pinkola Estés", "Belo Horizonte", "Brasil", "1975", "Biografia teste"),
  ("Napoleon Hill", "Belo Horizonte", "Brasil", "1965", "Biografia teste");

INSERT INTO livro (titulo, numeroEdicao, editora, anoPublicacao) VALUES
  ("A garota do lago", 3, "Aleph", 2010), 
  ("O homem mais rico da Babilônia", 4, "Editora Intríseca", 2000), 
  ("Do mil ao milhão: sem cortar o cafezinho", 5, "Editorial Rocco", 2002), 
  ("Mulheres que correm com os lobos", 7, "Globo Livros", 1999), 
  ("Mais esperto que o diabo", 6, "Editora Arqueiro", 2015),
  ("Torto arado", 8, "Editora Arqueiro", 2021), 
  ("A revolução dos bichos", 21, "Editora Arqueiro", 1989), 
  ("O poder do hábito", 10, "Editorial Rocco", 2012), 
  ("O milagre do amanhã", 1, "Editorial Rocco", 2015), 
  ("O morro dos ventos uivantes", 6, "Editorial Rocco", 2011), 
  ("1984", 13, "Editora Intríseca", 2012), 
  ("Midset: a nova psicologia do sucesso", 3, "Editora Intríseca", 2000), 
  ("Sombra dos ossos", 8, "Globo Livros", 1997), 
  ("O diário de Anne Frank",14, "Globo Livros", 1995), 
  ("O duque e eu", 13, "Aleph", 1993), 
  ("Orçamento sem falhas", 7, "Aleph", 2002);

INSERT INTO autoria (id_autor, ISBN_livro) VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (5,6),
  (5,7),
  (3,8),
  (3,9),
  (3,10),
  (2,11),
  (2,12),
  (4,13),
  (4,14),
  (1,15),
  (1,16);

INSERT INTO exemplar (ISBN_LIVRO) VALUES
  (1),
  (1),
  (1),
  (2),
  (2),
  (3),
  (3),
  (3),
  (4),
  (5),
  (5),
  (6),
  (7),
  (7),
  (8),
  (8),
  (9),
  (9),
  (9),
  (10),
  (11),
  (12),
  (13),
  (13),
  (14),
  (14),
  (14),
  (15),
  (16),
  (16),
  (16);

INSERT INTO endereco (logradouro, numero, CEP, bairro, complemento, cidade, estado) VALUES
  ("Rua Genésio Domingos de Oliveira", 924, "59144-285", "Nova Esperança", "Casa", "Parnamirim", "RN"),
  ("Rua Besnier de Oliveira", 871, "36025-370", "Dom Bosco", "Casa", "Juiz de Fora", "MG"),
  ("Rua Guarani", 913, "69919-840", "Conjunto Rui Lino", "Casa", "Rio Branco", "AC"),
  ("Rua Maués", 179, "29166-135", "Barcelona", "Casa", "Serra", "ES"),
  ("Rua Marieta de Mello Marques", 148, "69314-354", "Doutor Sílvio Leite", "Casa", "Boa Vista", "RR"),
  ("Avenida Plínio Brasil Milano 1000", 200, "90520-900", "Higienópolis", "Casa", "Porto Alegre", "RS");

INSERT INTO usuario (nome, email, endereco_id) VALUES
  ("Aicha Ávila Fortunato", "aicha@email.com", 1),
  ("Jayson Sacramento Moura", "jayson@email.com", 2),
  ("Amora Frota Lagos", "amora@email.com", 3),
  ("Melinda Nolasco Cunha", "melinda@email.com", 4),
  ("Fernanda Melgaço Figueira", "fernanda@email.com", 5),
  ("Samantha Paranhos Argolo", "samantha@email.com", 6);

INSERT INTO telefone (usuario_id, telefone) VALUES
  (1, "(84) 993359918"),
  (2, "(32) 98228-9626"),
  (3, "(68) 99222-8276"),
  (4, "(27) 98905-0580"),
  (5, "(45) 99301-8145"),
  (6, "(51) 99876-4332");

INSERT INTO emprestimo (dataEmprestimo, diasEmprestado, dataDevolucao, id_usuario, codigoExemplar) VALUES
  ("2021-09-03 10:16:00", 7, NULL, 1, 1),
  ("2019-06-14 14:00:31", 7, "2019-06-17 14:00:00", 1, 4),
  ("2019-05-16 15:34:43", 3, "2019-05-22 15:34:00", 2, 17),
  ("2018-06-13 11:43:59", 3, "2018-06-15 11:43:00", 3, 2),
  ("2019-12-08 12:04:13", 3, "2019-12-09 12:04:00", 4, 7),
  ("2018-12-12 10:12:12", 5, "2018-12-16 10:12:00", 5, 31),
  ("2021-09-08 09:07:49", 5, NULL, 2, 8),
  ("2019-11-18 12:31:23", 3, "2019-11-22 12:31:00", 6, 6),
  ("2021-09-03 09:49:34", 5, NULL, 3, 6),
  ("2018-04-22 13:11:48", 7, "2018-04-28 13:11:59", 3, 10),
  ("2018-02-16 17:38:02", 7, "2018-02-20 17:38:59", 2, 30),
  ("2018-12-21 12:54:28", 3, "2018-12-22 12:54:59", 4, 20),
  ("2018-09-15 16:08:50", 3, "2018-09-16 16:08:59", 1, 11),
  ("2019-03-17 13:26:00", 7, "2019-03-23 13:26:00", 3, 14),
  ("2021-09-01 08:31:26", 5, NULL, 4, 10),
  ("2019-05-26 13:25:41", 5, "2019-05-29 13:25:00", 3, 21),
  ("2021-09-02 16:27:36", 5, "2021-09-06 16:27:36", 5, 15),
  ("2021-09-03 08:00:52", 5, "2021-09-08 16:27:36", 6, 12),
  ("2019-11-15 10:59:47", 5, "2019-11-20 10:59:00", 5, 5),
  ("2019-03-10 09:31:38", 7, "2019-03-17 09:31:00", 6, 29),
  ("2019-08-25 15:39:19", 7, "2019-08-30 15:39:00", 2, 13),
  ("2021-09-06 09:19:30", 7, NULL, 3, 29),
  ("2019-03-05 13:30:02", 7, "2019-03-12 13:30:59", 1, 24),
  ("2018-06-24 09:20:44", 3, "2018-06-27 09:20:59", 1, 30),
  ("2021-09-05 10:35:01", 5, "2021-09-11 10:35:01", 2, 20),
  ("2018-11-26 14:00:19", 7, "2018-11-30 14:00:00", 3, 27),
  ("2021-09-02 16:05:54", 3, "2021-09-05 16:05:54", 1, 18),
  ("2021-09-01 10:37:28", 5, "2021-09-07 16:05:54", 4, 31),
  ("2019-11-04 11:19:51", 3, "2019-11-07 11:19:00", 2, 28),
  ("2021-09-07 13:37:08", 7, NULL, 2, 23),
  ("2019-01-25 11:43:32", 7, "2019-01-31 11:43:00", 6, 10);

INSERT INTO multa (codigoEmprestimo, pago, diasAtraso, taxaAtraso) VALUES
  (1, false, 1, 1.5),
  (3, true, 3, 1.5),
  (8, true, 1, 1.5),
  (9, false, 3, 1.5),
  (15, false, 5, 1.5),
  (25, true, 1, 1.5),
  (28, true, 1, 1.5);





