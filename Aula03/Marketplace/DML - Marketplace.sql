-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Leticia Zimerer', 'leticiazimer@yahoo.com.br', '134652', 'Rua Camaraje'),
(2,  'Thamyres Cavalcanti', 'thamyres@gmail.com', '134652', 'Rua dos laranjais, 265 - SP'),
(3, 'Uriel Pereira', 'uriel@gmail.com', '134652', 'Rua dos Amarais, 357 - SP')

INSERT INTO Produtos
VALUES
(1, 'Cilios Posticos', 'Cilios Postiços Magneticos', 29.90),
(2, 'Mascara Descartavel', 'Mascara Descartavel protege Covid', 10.00),
(3, 'Sabonete Pos Maquiagem', 'Shampoo para uso Adulto Humano', 7.50)

INSERT INTO Vendas
VALUES
(1, 3, 'Beleza', 29.90,'Cilios Posticos'),
(2, 10, 'Beleza', 10.00, 'Mascara Descartavel'),
(3, 90, 'Saude', 7.50, 'Sabonete Pos Maquiagem' )

INSERT INTO Entrega
VALUES
(1, 20),
(2, 20),
(3, 2)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua Camara%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 10 AND 30

UPDATE Usuarios
SET Nome = 'Leticia Zimerer Fornarolo'
WHERE Id = 1

DELETE Usuarios
DELETE Produtos
DELETE Vendas
DELETE Entrega

select * from Entrega