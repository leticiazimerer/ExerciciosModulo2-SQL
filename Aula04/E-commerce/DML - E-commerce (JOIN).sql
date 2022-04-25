-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO tb_usuario
VALUES
(1, 'Leticia Zimerer', 'leticiazimer@yahoo.com.br', '134652', 44405886890),
(2, 'Cleiton Ferreira', 'cleitonmoraes1706@gmail.com', '134652', 49599544854),
(3, 'Jade Zimerer', 'jadezimerer@gmail.com', '134652', 40492211876)

INSERT INTO tb_produtos
VALUES
(1,'Cilios Posticos', 29.90, 999, 'Beleza', 'Credito'),
(2,'Mascara Descartavel', 10.00, 123, 'Saude', 'Pix'),
(3,'Sabonete Pos Maquiagem', 7.50, 235, 'Beleza', 2, 'Dinheiro'),
(4, 'TV 50 Polegadas', 10000.00, 'Eletrônicos', 'Boleto')

INSERT INTO db_entrega
VALUES
(1, 10),
(2, 9),
(3, 20)

SELECT * FROM tb_usuario
WHERE CPF LIKE '%495%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 7 AND 10000

--INNER JOIN TUDO DE USUARIO + MEDIA DOS VALORES
SELECT * FROM tb_anuncios.nome AS Nome
AVG(tb_produtos.valor) AS Preço
INNER JOIN entrega ON tb_anuncios.FK.Entrega = tb_entrega.FK_Entrega
INNER JOIN produtos ON usuario.FK.Produto = produtos.FK_Produto

----INNER JOIN TUDO DE USUARIO + SOMA DOS VALORES
SELECT tb_usuario.CPF AS 'CPF', tb_entrega.previsao AS 'Previsão' FROM tb_usuario.nome 
SUM(produtos.valor) AS Preço
INNER JOIN tb_entrega ON tb_usuario.FK.Entrega = tb_entrega.FK_Entrega
INNER JOIN tb_produtos ON tb_usuario.FK.Produto = tb_produtos.FK_Produto

--LEFT E RIGHT JOIN
SELECT * FROM tb_usuario
LEFT JOIN tb_entrega ON tb_usuarios.FK.Entrega = tb_entrega.FK_Entrega --LEFT (USUARIO) RIGHT (ENTREGA)
WHERE tb_usuario.nome IS NULL

SELECT * FROM tb_usuario
RIGHT JOIN tb_produtos ON tb_usuario.FK.Produto = tb_produtos.FK_Produto --LEFT (ENTREGA) RIGHT (PRODUTOS)
WHERE tb_usuario.nome LIKE '%Clei%'
GROUP BY tb_usuario.nome;

UPDATE tb_usuario
SET Nome = 'Cleiton Ferreira de Moraes'
WHERE Id = 2

