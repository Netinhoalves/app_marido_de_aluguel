--
-- PostgreSQL database dump
--

CREATE TABLE Cidade (
  codigo smallint NOT NULL PRIMARY KEY,
  nome varchar(50) NOT NULL
);

CREATE TABLE Pessoa (
	id serial NOT NULL PRIMARY KEY,
  nome varchar(60) NOT NULL,
  sexo char(1) NOT NULL,
	data_nasc date NULL,
	telefone varchar(40) NULL,

  cidade_codigo smallint 
	  REFERENCES Cidade(codigo),

  CHECK (sexo IN ( 'F' , 'M', 'O' ))
);

CREATE TABLE Prestador
(
	id int NOT NULL PRIMARY KEY,
	pessoa_id int NOT NULL REFERENCES Pessoa(id),
	preco_visita numeric(5,2) NOT NULL
);

CREATE TABLE Cliente (
  id int NOT NULL PRIMARY KEY,
  pessoa_id int NOT NULL REFERENCES Pessoa(id)
);

CREATE TABLE Habilidade (
  id serial NOT NULL PRIMARY KEY,
  nome varchar(60) NOT NULL,
	preco_base numeric(6,2) NOT NULL
);

CREATE TABLE Servico (
	id smallint NOT NULL PRIMARY KEY,
  CPF varchar(11) NOT NULL UNIQUE,
  id_habilidade smallint 
	  REFERENCES Habilidade(id)
);

CREATE TABLE Agendamento (
  id smallint NOT NULL PRIMARY KEY,
	pessoa_id int NOT NULL REFERENCES Cliente(id),
  data_visita timestamp NOT NULL
);

INSERT INTO Cidade(codigo, nome) VALUES 
(1, 'Três Lagoas'),
(2, 'Castilho'),
(3, 'Andradina');

INSERT INTO Pessoa(id, sexo, cidade_codigo, data_nasc, nome) VALUES
  (0, 'M',    1, '1990-12-25', 'ARTHUR RICARDO SANT ANA DE SOUZA'), 
  (1, 'M',    2, '1953-01-17', 'BRUNO LOURENÇO PEREIRA'),
  (2, 'F',    3, '1988-02-18', 'CAMILA EDUARDA RUIS FONSECA BALDO'),
  (3, 'M',    1, '2009-09-16', 'CARLOS EDUARDO DE CAMPOS RODRIGUES'),
  (4, 'M',    3, '1996-09-14', 'CAYO HENRIQUE MERCADANTE VEIGA'),
  (5, 'M',    2, '1961-03-13', 'CLEITON DALASTRA'),
  (6, 'M',    1, '1959-08-04', 'DAVI FRANCA DE MELO'),
  (7, 'M',    1, '1970-08-20', 'DIRCEU ALVES NETO'),
  (8, 'M',    1, '1996-09-05', 'EMERSON ALVES FRANÇA HAMBRUCK CHECATO'),
  (9, 'M', NULL, '2021-10-26', 'FELIPE FLAMARINI'),
  (10,'F',    3, '2019-12-22', 'FRANCIELE ALMEIDA DE ARAUJO'),
  (11,'M',    1, '1972-10-11', 'GABRIEL MARCHI CAMPOS'),
  (12,'F',    1, '1989-07-23', 'ISABELLE FIRMINO RANCAN'),
  (13,'M',    2, '2012-01-06', 'KAUAN OLIVAL LOPES'),
  (14,'M',    1, '1975-05-10', 'MATHEUS DA SILVA PAULA'),
  (15,'M',    2, '1976-11-27', 'NATHAN DA SILVA BRITO'),
  (16,'M',    1, '1991-02-21', 'NICHOLAS RICARDO SILVA ARAUJO'),
  (17,'M', NULL, '1951-09-21', 'PATRICK CAUÃ GONÇALVES DIAS'),
  (18,'M',    1, '1978-09-11', 'PEDRO SAMUEL SOARES SIMÃO'),
  (19,'M',    1, '1967-11-24', 'RAI FERNANDES DOS SANTOS'),
  (20,'F',    1, '2009-06-17', 'RARIANE DOS SANTOS PEREIRA'),
  (21,'M',    1, '1999-06-19', 'SAMUEL CARLOS SANTOS SILVA'),
	(22,'F',    1, '1999-08-03', 'TALITA DOS SANTOS CABREIRA'),
	(23,'F',    1, '2022-06-19', 'TAYNÁ ELLEN DE JESUS SOUZA'),
	(24,'M',    1, '2022-06-19', 'UELTON OLIVEIRA DIAS'),
	(25,'M',    2, '2001-10-10', 'VINÍCIUS DE OLIVEIRA MEDINA'),
	(26,'F',    1, '1999-08-03', 'MARIA CLARA DE MELO'),
	(27,'M',    1, '2022-06-19', 'CARLOS EDUARDO SANTOS MARTINS'),
	(28,'F',    1, '2022-06-19', 'ANA CARLA MARIA MARTINS'),
	(29,'M',    3, '2001-10-10', 'PAULO DE TARSO ARAUJO');

  INSERT INTO Prestador(id, pessoa_id, preco_visita) values 
  (1, 0, 30),
  (2, 1, 25),
  (3, 2, 35),
  (4, 3, 15),
  (5, 4, 40),
  (6, 5, 30),
  (7, 6, 25),
  (8, 7, 35),
  (9, 8, 15),
  (10, 9, 40),
  (11, 10, 20),
  (12, 11, 45);

  INSERT INTO Cliente(id, pessoa_id) values
  (1, 12),
  (2, 13),
  (3, 14),
  (4, 15),
  (5, 16),
  (6, 17),
  (7, 18),
  (8, 19),
  (9, 20),
  (10, 22),
  (20, 26),
  (25, 29),
  (35, 21);

INSERT INTO Habilidade(id, nome, preco_base) VALUES 
  (1, 'Montar pequenos móveis', 120),
  (2, 'Pequenos reparos', 533),
  (3, 'Instalação de lava/secadora roupa', 108),
  (4, 'Pequenos reparos elétricos', 467),
  (5, 'Instalar suporte de TV', 150),
  (6, 'Instalar torneira simples', 210);