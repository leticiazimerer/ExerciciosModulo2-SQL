-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Leticia Zimerer', 'leticiazimerer', '134652'),
(2,  'Thamyres Cavalcanti', 'thamyres', '134652'),
(3, 'Uriel Pereira', 'uriel', '134652')

INSERT INTO Anuncios
VALUES
(1, 'Dev. Jr', 'Vaga de desenv. junior na Google', '(11)93456-7856', '01/03/2022'),
(1, 'Dev. Senior', 'Vaga de desenv. senior na Google', '(11)93456-7856', '03/03/2022')

SELECT * FROM Usuarios
WHERE Endereco LIKE '%tham%'

SELECT * FROM Anuncios
WHERE Descricao LIKE '%junior%'

UPDATE Usuarios
SET Nome = 'Leticia Zimerer Fornarolo'
WHERE Id = 1

DELETE Usuarios
DELETE Anuncios

select * from Anuncios