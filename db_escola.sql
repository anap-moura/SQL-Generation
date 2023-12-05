CREATE DATABASE db_escola;
USE db_escola; 

CREATE TABLE tb_alunos(
id INT,
nome VARCHAR(100) NOT NULL,
matricula BIGINT(20) AUTO_INCREMENT,
valorNota DECIMAL(3, 1) NOT NULL,
dataNascimento DATE,
PRIMARY KEY (matricula)
);

INSERT INTO tb_alunos (nome, valorNota, dataNascimento, id) 
VALUES ('Natalia Leite',  8.5, '2005-03-15',1),
('Paulo Sergio',  6.2, '2004-08-22',2),
('Rodrigo Cainã',  7.8, '2005-01-10',3),
('Renan Araújo', 9.0, '2004-11-05',4),
('Vivian Regina',  6.5, '2005-06-18',5),
('Heron Francelino', 7.2, '2004-09-30',6),
('Pedro Freitas',  8.7, '2005-02-25',7),
('Juliana Scabacino',  5.9, '2005-07-12', 8);

SELECT * FROM tb_alunos WHERE valorNota > 7.0;
SELECT * FROM tb_alunos WHERE valorNota < 7.0;
UPDATE tb_alunos SET valorNota = 7.5 WHERE matricula = 6;
SELECT * FROM tb_alunos WHERE matricula = 6;
