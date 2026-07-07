
CREATE TABLE TB_CLIENTES_SCORE
(
cliente_id INT PRIMARY KEY,
nome VARCHAR(20) NOT NULL,
score_credito INT NOT NULL);

INSERT INTO TB_CLIENTES_SCORE (cliente_id, nome, score_credito)
VALUES 
(1, 'João', 750),
(2, 'Maria',520),
(3, 'Pedro',890),
(4, ' Ana', 610);
CREATE TABLE TB_FAIXA_CREDITO
(
faixa_id INT PRIMARY KEY,
score_max
)