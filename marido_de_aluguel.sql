--
-- PostgreSQL database dump
--

CREATE TABLE Pessoa (
	id serial NOT NULL PRIMARY KEY,
  nome varchar(60) NOT NULL,
  sexo char(1) NOT NULL,
	data_nasc date NULL,
	telefone varchar(40) NULL,

  cidade_codigo smallint 
	REFERENCES Cidade(codigo),

  CHECK (sexo IN ( 'F' , 'M', 'O' ))
)

INSERT INTO Cidade VALUES (1, 'Três Lagoas');
INSERT INTO Cidade VALUES (2, 'Castilho');
INSERT INTO Cidade VALUES (3, 'Andradina');

INSERT INTO Pessoa(id, nome, sexo, cidade_codigo, data_nasc) VALUES
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