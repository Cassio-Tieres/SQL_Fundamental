 CRIAR BANCO: CREATE
 DELETAR BANCO: DROP
 USAR BANCO: USER


 USE meubanco;

 CREATE TABLE pessoa (
	 aqui dentro eu crio as colunas
	nome VARCHAR(100)
 );

 DROP TABLE pessoa;

 TIPOS DE DADOS
 DADOS PARA TEXTO, NUMERO E DATAS
 TEXTO: varchar(1000) // devemos sempre	otimizar o espaço otimizar o tipo de dado na tabela. o mais utilizado é o varchar, pois limitamos o tamanho do dado desse campo.
 NUMBERO: INT, BIG INT. Nós podemos limitar também uma determinada quantidade de caracteres. Quando não determinamos um limite ele salva no padrão (o limite máximo) o que pode ser um problema para o desempenho do banco
 DATAS: os dois mais utilizados: TIMESTAMP(horas, segundos, mês e dias); DATE (anos, mês e dias)
 EXEMPLO

USE meubanco;

 CREATE TABLE pessoas (
	nome VARCHAR(100),
	salario INT,
	data_nascimento DATE
 );

 ALTERAR COLUNA

 ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(255);



 CRUD
 C: create = CREATE = INSERT (toda inserção de tabela faz parte do create)
 R: read = SELECT
 U: update = UPDATE (alteração) - SEMPRE UTILIZE WHERE
 D: delete = DELETE - SEMPRE UTILIZE WHERE

 SELECT * FROM pessoas;

 INSERIR DADOS
 INSERT INTO pessoas (nome, salario, data_nascimento, profissao)
 VALUES("Cássio", 3000, "2001-03-30", "programador");

  SELECT * FROM pessoas WHERE data_nascimento = '0000-00-00';
 
 INSERT INTO pessoas (nome, salario, data_nascimento, profissao) VALUES ("Milena N. Modesto", 8000, "2000-02-25", "Psicologa");
 
 SELECT * FROM pessoas;

 ATUALIZAR DADOS
 UPDATE pessoas SET salario = 3500 WHERE nome = "Cássio";

 DELETE FROM pessoas WHERE data_nascimento = "0000-00-00";
  SELECT * FROM pessoas;

 DELETE FROM pessoas WHERE nome = "Milena N. Modesto" AND salario > 2500;

SELECT * FROM pessoas;

