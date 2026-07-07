USE DB_T04301_VANESSA_CASTRO;
-- ENCONTRO 18 -- DESAFIO - 01
CREATE TABLE tb_departamentos (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100)
);

CREATE TABLE tb_funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES tb_departamentos(id_departamento)
);

-- Departamentos
INSERT INTO tb_departamentos (id_departamento, nome_departamento) VALUES
(1, 'Financeiro'),
(2, 'RH'),
(3, 'TI'),
(4, 'Marketing'),
(5, 'Inovação'); -- sem funcionários

-- Funcionários
INSERT INTO tb_funcionarios (id_funcionario, nome_funcionario, id_departamento) VALUES
(1, 'Ana', 1),
(2, 'Bruno', 1),
(3, 'Carlos', 2),
(4, 'Daniela', 3),
(5, 'Eduardo', 3),
(6, 'Fernanda', 4);
SELECT * FROM tb_departamentos;
SELECT * FROM tb_funcionarios;

SELECT 
D.nome_departamento,
F.nome_funcionario
 FROM tb_departamentos AS D
LEFT JOIN tb_funcionarios AS F
ON D.id_departamento = F.id_departamento