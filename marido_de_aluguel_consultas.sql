SELECT * FROM Cidade;

SELECT nome FROM Cidade;

SELECT Pessoa.ID, Pessoa.nome, Pessoa.data_nasc, Pessoa.sexo
FROM Pessoa
ORDER BY Pessoa.sexo, Pessoa.nome;

SELECT Pessoa.ID, Pessoa.nome, Pessoa.cidade_codigo
FROM Pessoa
WHERE Pessoa.cidade_codigo = 1;

SELECT Pessoa.nome, Prestador.id, Prestador.preco_visita, Cidade.nome
FROM Pessoa INNER JOIN Prestador ON Prestador.pessoa_ID = Pessoa.ID
	LEFT JOIN Cidade ON Pessoa.cidade_codigo = Cidade.codigo
	WHERE Prestador.preco_visita > 30;

  SELECT P.ID, P.nome, 
	date_part('year', AGE(data_nasc)) idade,
	CASE 
		WHEN date_part('year', AGE(data_nasc)) < 18 THEN 'menor de idade'
		ELSE 'maior de idade'
	END
FROM Pessoa P ORDER BY ID;

SELECT Cliente.id, Pessoa.nome
From Pessoa INNER JOIN Cliente ON Cliente.pessoa_id = Pessoa.id;

