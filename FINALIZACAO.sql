-- CONTRAINTS



-- DROP TABLE pessoas;
-- SELECT * FROM pessoas;
-- ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(100);

-- INSERT INTO pessoas (nome, salario, data_nascimento, profissao) VALUES ("Roberta", 6500, "1999-10-12", "Arquiteta de Software");

-- CONSTRAINTS - relação - FOREIGN KEY (chave estrangeira)

-- CREATE TABLE enderecos (
--	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
--	rua VARCHAR(255),
--	numero VARCHAR(10),
--	pessoa_id INT NOT NULL, -- chave estrangeira
--	FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
-- );

-- INSERT INTO enderecos (rua, numero, pessoa_id) VALUES ("Rua das Árvores", "1314", 2);
-- SELECT * FROM pessoas;


-- JOIN
-- Consulta entre duas ou mais tabelas por meio de relações.


-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN

-- INNER JOIN: SELECT pessoas.nome, enderecos.* FROM pessoas JOIN enderecos ON pessoas.id = enderecos.pessoa_id;
-- LEFT JOIN: SELECT pessoas.nome, enderecos.* FROM pessoas LEFT JOIN enderecos ON pessoas.id = enderecos.pessoa_id; trás os resultados que combinam + todos os itens da tabela esquerda
-- SELECT pessoas.nome, enderecos.* FROM pessoas RIGHT JOIN enderecos ON pessoas.id = enderecos.pessoa_id; trás os resultados que combinam, parecido com o INNER JOIN




-- AGREGATION FUNCTIONS
-- soma de todos os salários

-- SELECT SUM(salario) FROM pessoas;

-- ALIAS : nomeia determinada coluna
-- SELECT SUM(salario) AS soma_dos_salarios FROM pessoas;

-- COUNT: numero de registros de uma tabela - podemos especificamos mais ainda utilizando o where
-- SELECT COUNT(*) AS quantidade_de_pessoas FROM pessoas WHERE profissao = "Psicóloga";

-- GROUP BY: agrupa resultados por alguma condição

-- SELECT nome, profissao, COUNT(*) AS qutd_por_profissao FROM pessoas GROUP BY profissao;

-- FUNÇÕES DE TEXTO

-- CONCATENAR TEXTO
-- SELECT CONCAT("O nome da pessoa é: ", nome, " e ele ganha R$: ", salario) AS descricao FROM pessoas;

-- FUNÇÃO DE DATA
-- SELECT YEAR(data_nascimento)  AS ano_de_nascimento, MONTH(data_nascimento) AS mes_de_nascimento, DAY(data_nascimento) AS dia_de_nascimento FROM pessoas;