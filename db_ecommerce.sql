CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT  AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    volumeML INT, -- Volume em ml
    valor DECIMAL(10, 2) NOT NULL,
    quantEstoque INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, volumeML, valor, quantEstoque) 
VALUES ('Idôle', 'Lancôme', 25, 280.00, 5),
('Libre', 'Yves Saint Laurent', 30, 370.00, 10),
('Sí', 'Giorgio Armani', 50, 530.00, 8),
('My Way', 'Giorgio Armani', 50, 460.00, 20),
('Leau Dissey Feminino', 'Issey Miyake', 100, 800.00, 3),
('Miss Dior', 'Dior', 30, 480.00, 11),
('Jadore', 'Dior', 100, 900.00, 11),
('Gucci Flora', 'Gucci', 30, 490.00, 5);


SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;
-- UPDATE para atualizar o valor de um produto (exemplo: aumentar o valor do Perfume B)
UPDATE tb_produtos SET valor = 300.00 WHERE id = '1';
-- SELECT para verificar se a atualização foi realizada corretamente
SELECT * FROM tb_produtos WHERE id = '1';
