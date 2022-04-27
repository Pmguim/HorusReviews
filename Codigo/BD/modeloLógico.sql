CREATE DATABASE HorusRev

USE HorusRev

CREATE TABLE Usur(

	CodUser		INT			NOT NULL IDENTITY (1,1),
	UserName	VARCHAR(15) NOT NULL,
	CONSTRAINT	PK_UserName PRIMARY KEY(UserName),
	Nome		VARCHAR(50)	NOT NULL,
	DataNasc	DATE		NOT NULL,
	Email		VARCHAR(55) NOT NULL,
	Senha		VARCHAR(12) NOT NULL

)
INSERT INTO Conteudo 
VALUES ('Eternos', 'De Chlo� Zhao', '04 de Novembro de 2021', 'Origin�rios dos primeiros seres a terem habitado a Terra, Os Eternos fazem parte de uma ra�a modificada geneticamente pelos deuses espaciais conhecidos como Celestiais. Dotados de caracter�sticas como imortalidade e manipula��o de energia c�smica, eles s�o frutos de experi�ncias fracassadas de seus pr�prios criadores, que tamb�m foram respons�veis por gerar os Deviantes, seus principais inimigos.', 'A��o - Fic��o Cient�fica - Fantasia')
INSERT INTO Conteudo
VALUES ('Duna', 'De Denis Villeneuve', '21 de Outubro de 2021','Inspirado na s�rie de livros de Frank Herbert, Duna se passa em um futuro long�nquo. O Duque Leto Atreides administra o planeta des�rtico Arrakis, tamb�m conhecido como Duna, lugar de �nica fonte da subst�ncia rara chamada de "melange", usada para estender a vida humana, chegar a velocidade da luz e garantir poderes sobrehumanos. Para isso ele manda seu filho, Paul Atreides (Timoth�e Chalamet), um jovem brilhante e talentoso que nasceu para ter um grande destino al�m de sua imagina��o, e seus servos e concubina Lady Jessica (Rebecca Fergunson), que tamb�m � uma Bene Gesserit. Eles v�o para Duna, afim de garantir o futuro de sua fam�lia e seu povo. Por�m, uma trai��o amarga pela posse da melange faz com que Paul e Jessica fujam para os Fremen, nativos do planeta que vivem nos cantos mais longes do deserto.', 'Fic��o cient�fica - Drama')
INSERT INTO Conteudo
VALUES ('Finch', 'De Miguel Sapochnik', '5 de Novembro de 2021', 'Eu um mundo p�s-apocal�ptico, um rob� constru�do para proteger o cachorro do seu criado, que est� a beira da morte, aprende sobre a vida, amor e amizade, aprendendo o que significa ser humano.', 'Fic��o Cient�fica - Drama')
INSERT INTO Conteudo
VALUES ('Cowboy Bebop', 'De Andr� Nemec, Jeff Pinkner', '19 de Novembro de 2021','Baseado no anime dos anos 1990, Cowboy Bebop acompanha Spike Spiegel (John Cho), Jet Black (Mustafa Shakir) e Faye Valentine (Daniella Pineda) enquanto eles formam um poderoso grupo de ca�adores de recompensas se aventurando pelo sistema solar atr�s dos criminosos mais perigosos do universo, como Vicious (Alex Hassell). Juntos, eles embarcaram em diversas aventuras mortais pela gal�xia, encontrando todo tipo de figura e formando aliados e inimigos pelo caminho.', 'Aventura - Fic��o Cient�fica - Animes - A��o')
INSERT INTO Conteudo
VALUES ('Resident Evil: Bem-Vindo a Raccoon City', 'De Johannes Roberts', '2 de Dezembro de 2021', 'Passando no ano de 1998, Resident Evil: Bem-Vindo a Raccoon City � o filme que explica os segredos da Mans�o Spencer e da cidade de Raccoon City.', 'A��o - Terror')

CREATE TABLE Conteudo(

	ContCod		INT			NOT NULL IDENTITY(1,1),
	CONSTRAINT	PK_ContCod	PRIMARY KEY(ContCod),
	ContName	VARCHAR(100)NOT NULL,
	Diretor		VARCHAR(70) NOT NULL,
	DataLanc	CHAR(30)	NOT NULL,
	Sinopse		VARCHAR(1000)NOT NULL,
	Categoria	VARCHAR(50)	NOT NULL
)


CREATE TABLE Coment(

	UserNameComent		VARCHAR(15) NOT NULL,
	CONSTRAINT			FK_UserName FOREIGN KEY(UserNameComent) REFERENCES Usur(UserName),
	CodComent			INT			NOT NULL,
	CONSTRAINT			PK_CodComent	PRIMARY KEY(CodComent),
	DataPost			DATE		NOT NULL

)
SELECT * FROM Conteudo
SELECT * FROM Usur 
SELECT * FROM Coment




DROP TABLE Usur
DROP TABLE Coment
DROP TABLE Conteudo

DELETE FROM Conteudo
DELETE FROM Usur
