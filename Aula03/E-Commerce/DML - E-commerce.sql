-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Leticia Zimerer', 'leticiazimer@yahoo.com.br', '134652', 44405886890),
(2, 'Thamyres Cavalcanti', 'thamyres@gmail.com', '134652', 52708674862),
(3, 'Uriel Pereira', 'uriel@gmail.com', '134652', 40492211876)

INSERT INTO Produtos
VALUES
(1,'Cilios Posticos', 29.90, 999, 'Beleza', 'Credito'),
(2,'Mascara Descartavel', 10.00, 123, 'Saude', 'Debito'),
(3,'Sabonete Pos Maquiagem', 7.50, 235, 'Beleza', 2, 'Dinheiro')

INSERT INTO Entrega
VALUES
(1, 10),
(2, 9),
(3, 20)

SELECT * FROM Usuarios
WHERE CPF LIKE '%444%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 7 AND 15

UPDATE Usuarios
SET Nome = 'Leticia Zimerer Fornarolo'
WHERE Id = 1

DELETE Produtos
DELETE Usuarios
DELETE Entrega

select * from Usuarios