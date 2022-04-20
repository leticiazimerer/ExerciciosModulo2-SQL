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

INSERT INTO Postagens
VALUES
(1, 'Vencedor BBB22', 'Paulo Andre derrota Arthur Aguiar e vende BBB22')
(2, 'Anitta no Coachella','Anitta arrasa na apresentacao e mostra que o Brasil nao esta para brincadeira')

INSERT INTO Temas
VALUES
(1,'Paulo Andre derrota Arthur Aguiar e vende BBB22'),
(2'Anitta no Coachella','Anitta arrasa na apresentacao e mostra que o Brasil nao esta para brincadeira')

SELECT * FROM Usuarios
WHERE Endereco LIKE '%uri%'

SELECT * FROM Postagens
WHERE Titulo LIKE '%BBB22%'

UPDATE Usuarios
SET Nome = 'Leticia Zimerer Fornarolo'
WHERE Id = 1

DELETE Usuarios
DELETE Postagens
DELETE Temas

select * from Usuarios