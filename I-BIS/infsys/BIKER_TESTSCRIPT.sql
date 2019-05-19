-- Opdracht 4

-- 2A
-- Constraint
ALTER TABLE Klant 
ADD CONSTRAINT CK_Klant CHECK (geslacht IN('M', 'V'))

-- Positieve test
INSERT INTO Klant 
VALUES(101, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'klant@biker.nl', '2000-01-01', 'M')

-- Negatieve test
INSERT INTO Klant 
VALUES(101, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'klant@biker.nl', '2000-01-01', 'A')

-- 2B
-- Constraint
ALTER TABLE Huurovereenkomst
ADD CONSTRAINT CK_VerhuurBeginEindDatum CHECK (Startdatum < Einddatum);

-- Positieve test
INSERT INTO Huurovereenkomst
VALUES(2338, '2019-01-24', '2019-01-25', null, 'Gereserveerd', 1, 'soups')


-- Negatieve test
INSERT INTO Huurovereenkomst
VALUES(2338, '2019-01-25', '2019-01-24', null, 'Gereserveerd', 1, 'soups')

-- 2C
-- Constraint
ALTER TABLE Schade 
ADD CONSTRAINT CK_SchadeStartBetaalDatum CHECK (StartDatum <= BetaalDatum);
-- LET OP: bij deze constraint moet de startdatum kleiner of GELIJK AAN de betaaldatum zijn, omdat anders de constraint niet kan worden uitgevoerd. Dit komt omdat de data in de tabel al regels bevat waar de startdatum gelijk is aan de betaaldatum.

-- Positieve test
INSERT INTO Schade
VALUES(334, 'Achterband vervangen', '2019-01-24', null, null, '2019-01-25', 'soups', 13, 1)


-- Negatieve test
INSERT INTO Schade
VALUES(334, 'Achterband vervangen', '2019-01-25', null, null, '2019-01-24', 'soups', 13, 1)

-- 2D
-- Constraint
ALTER TABLE Klant
ADD CONSTRAINT U_KlantEmail UNIQUE (EmailAdres)

-- Positieve test
INSERT INTO Klant
VALUES(102, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'uniekemailadres@biker.nl', '2000-01-01', 'M')


-- Negatieve test
INSERT INTO Klant
VALUES(102, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'amet.dapibus@parturientmontesnascetur.com', '2000-01-01', 'M')

-- 2E
-- Constraint
CREATE FUNCTION dbo.VerzekeringFietsBeginDatum(@huurovereenkomstNr int)
RETURNS DATE
AS BEGIN 
	RETURN (
		SELECT v.Startdatum
		FROM VerhuurdeFiets vf
		INNER JOIN Huurovereenkomst h ON vf.HuurovereenkomstNr = h.HuurovereenkomstNr
		INNER JOIN Verzekering v ON vf.Polisnummer = v.Polisnummer 
		WHERE h.HuurovereenkomstNr = @huurovereenkomstNr
	)
END
GO

CREATE FUNCTION dbo.VerhuurBeginDatum(@huurovereenkomstNr int)
RETURNS DATE
AS BEGIN 
	RETURN (
		SELECT h.Startdatum
		FROM VerhuurdeFiets vf
		INNER JOIN Huurovereenkomst h ON vf.HuurovereenkomstNr = h.HuurovereenkomstNr
		INNER JOIN Verzekering v ON vf.Polisnummer = v.Polisnummer 
		WHERE h.HuurovereenkomstNr = @huurovereenkomstNr
	)
END
GO

ALTER TABLE Verzekering 
ADD CONSTRAINT CK_Verzekering CHECK (dbo.VerzekeringFietsBeginDatum(HuurovereenkomstNr) <= dbo.VerhuurBeginDatum(HuurovereenkomstNr))

-- Positieve test
INSERT INTO Verzekering 
VALUES(2613, '2019-01-24', '2019-07-24')

INSERT INTO Huurovereenkomst
VALUES(2339, '2019-01-25', '2019-01-28', '2019-01-23', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeFiets
VALUES(2339, 86, 2613) 

-- Negatieve test
INSERT INTO Verzekering 
VALUES(2614, '2019-01-26', '2019-07-24')

INSERT INTO Huurovereenkomst
VALUES(2340, '2019-01-25', '2019-01-28', '2019-01-23', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeFiets
VALUES(2340, 86, 2614) 

ALTER TABLE Verzekering DROP CONSTRAINT CK_Verzekering
DROP FUNCTION [dbo].[VerzekeringFietsBeginDatum]
DROP FUNCTION [dbo].[VerhuurBeginDatum]

select * from verhuurdefiets
select * from huurovereenkomst
select * from verzekering

DELETE FROM VerhuurdeFiets WHERE HuurovereenkomstNr IN(2340)
DELETE FROM Verzekering WHERE Polisnummer IN(2614)
DELETE FROM Huurovereenkomst WHERE HuurovereenkomstNr IN(2339, 2340)

-- 2F
-- Constraint
ALTER TABLE Fiets 
ADD CONSTRAINT CK_FietsDagprijsNieuwwaarde CHECK (Dagprijs < Nieuwwaarde)

-- Positieve test
INSERT INTO FIETS
VALUES(101, 'Batavus', 'Hill', 'H', 0, 100, 1000)

-- Negatieve test
INSERT INTO FIETS
VALUES(101, 'Batavus', 'Hill', 'H', 0, 100, 99)

-- 2G
-- Positieve test
INSERT INTO Medewerker
VALUES('testmw', 'w8w00rd', '1990-01-01', 'Test', 'Medewerker')

INSERT INTO Klant
VALUES(103, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'medewerker103@biker.nl', '1990-01-01', 'M')

-- Negatieve test
INSERT INTO Medewerker
VALUES('testmw', 'w8w00rd', '2019-01-01', 'Test', 'Medewerker')

INSERT INTO Klant
VALUES(103, 'Klant', 'X', 'Teststraat 1', '1234AB', 'Arnhem', 'medewerker103@biker.nl', '2019-01-01', 'M')

-- 2H
-- Positieve test
INSERT INTO Huurovereenkomst
VALUES(2341, '2019-01-24', '2019-01-25', '2019-01-24', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeFiets
VALUES(2341, 1, null)

INSERT INTO VerhuurdeAccessoire
VALUES(2341, 1)

-- Negatieve test
INSERT INTO Huurovereenkomst
VALUES(2342, '2019-01-24', '2019-01-25', '2019-01-24', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeAccessoire
VALUES(2342, 1)

-- 2I
-- Positieve test
INSERT INTO Huurovereenkomst
VALUES(2343, '2019-01-24', '2019-01-25', '2019-01-24', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeFiets
VALUES(2343, 1, null)

INSERT INTO VerhuurdeAccessoire
VALUES(2343, 1), (2343, 2)

-- Negatieve test
INSERT INTO Huurovereenkomst
VALUES(2344, '2019-01-24', '2019-01-25', '2019-01-24', 'Betaald', 86, 'noodles')

INSERT INTO VerhuurdeFiets
VALUES(2344, 1, null)

INSERT INTO VerhuurdeAccessoire
VALUES(2344, 1), (2344, 2), (2344, 3)

-- 2J
-- Positieve test
INSERT INTO Schade
VALUES(335, 'Spaken vervangen', '2010-01-02', '2010-01-04', 100, '2010-01-02', 'cereals', 13, 1)

-- Negatieve test
INSERT INTO Schade
VALUES(335, 'Spaken vervangen', '2010-01-06', '2010-01-08', 100, '2010-01-06', 'cereals', 13, 1)

-- 2K.1
ALTER TABLE Medewerker
ADD CONSTRAINT U_MedewerkerInlognaam UNIQUE (Inlognaam)

-- Positieve test
INSERT INTO Medewerker
VALUES('uniekeMedewerker', 'w8w00rd', '1990-01-01', '1234AB', 'Test', 'Medewerker')


-- Negatieve test
INSERT INTO Medewerker
VALUES('noodles', 'w8w00rd', '1990-01-01', '1234AB', 'Test', 'Medewerker')

-- 2K.2
ALTER TABLE Fiets
ADD CONSTRAINT CK_FietsDagprijs CHECK (Dagprijs > 0)

-- Positieve test
INSERT INTO Fiets
VALUES(102, 'Trek', 'Special', 'H', 0, 10, 1000)

-- Negatieve test
INSERT INTO Fiets
VALUES(103, 'Trek', 'Special', 'H', 0, 0, 1000)

-- 2K.3
ALTER TABLE Accessoire
ADD CONSTRAINT CK_AccessoireDagprijs CHECK (Dagprijs > 0)

--3.1
-- Positieve test
INSERT INTO Accessoire
VALUES(101, 'Kinderzitje', 'Trek', 'Regular', 10, 1000)

-- Negatieve test
INSERT INTO Accessoire
VALUES(102, 'Kinderzitje', 'Trek', 'Regular', 0, 1000)


-- 3.2
-- Positieve test
insert into Accessoire 
values(102, 'Helm', 'Sparta', 'Basic', 5, 90)

-- Negatieve test
insert into Accessoire 
values(102, 'Helm', 'Bell', 'Basic', 2, 25)

-- 3.3
-- Positieve test
insert into Fiets 
values(103, 'Fietstas', 'Cube', 'Basic', 5, 90)

-- Negatieve test
insert into Fiets 
values(103, 'Fietstas', 'Old Amsterdam', 'Basic', 2, 25)

-- 3.4
-- Positieve test
insert into Schade 
values(335, 'Spaken vervangen', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'noodles', 9, 6)

-- Negatieve test
insert into Schade 
values(335, 'Spaken vervangen', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'cake', 9, 6)

-- 3.5
-- Positieve test
insert into Schade 
values(335, 'Voorband geplakt', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'cereals', 13, 1)

-- Negatieve test
insert into Schade 
values(335, 'Voorband geplakt', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'cereals', 102, 1)

-- 3.6
-- Positieve test
insert into Schade 
values(336, 'Ventiel vervangen', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'seafood', 23, 7)

-- Negatieve test
insert into Schade 
values(336, 'Kettingkast vervangen', '2010-01-01', '2010-01-03', 100, '2010-01-01', 'seafood', 23, 7)


/*3.7*/
/*Goed*/

INSERT INTO [dbo].[MedewerkerRol]
     VALUES
           ('Verkoper'
           ,'noodles')
GO

/*Fout*/
GO

INSERT INTO [dbo].[MedewerkerRol]
     VALUES
           ('Iets heel anders'
           ,'noodles')
GO

/*3.8*/

/*Goed*/

INSERT INTO [dbo].[MedewerkerRol]
     VALUES
           ('Verkoper'
           ,'noodles')
GO

/*Fout*/
INSERT INTO [dbo].[MedewerkerRol]
     VALUES
           ('Verkoper'
           ,'eigennaam123')
GO

/*3.9*/

/*Goed*/
INSERT INTO [dbo].[TelefoonNummer]
           ([KlantNr]
           ,[TelefoonNr])
     VALUES
           (1
           ,'12321313321')
GO

/*Fout*/
INSERT INTO [dbo].[TelefoonNummer]
           ([KlantNr]
           ,[TelefoonNr])
     VALUES
           (313311
           ,'12321313321')
GO

/*3.10*/

/*Goed*/
INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2340
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'Betaald'
           ,2
           ,'noodles')

/*Fout*/

INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2341
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'weet ik niet'
           ,423112
           ,'noodles')


		   
/*3.11*/

/*Goed*/
INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2340
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'Betaald'
           ,2
           ,'noodles')

/*Fout*/

INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2341
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'weet ik niet'
           ,2
           ,'kieseennaam')

/*3.12*/
/*Goed*/
INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2340
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'Betaald'
           ,2
           ,'noodles')

/*Fout*/

INSERT INTO [dbo].[Huurovereenkomst]
     VALUES
           (2341
           ,GETDATE()
           ,DATEADD(dd, 5, GETDATE())
           ,GETDATE()
           ,'weet ik niet'
           ,2
           ,'noodles')

--3.13
--Positieve test
INSERT INTO VerhuurdeAccessoire VALUES (1, 89);
--Negatieve test
INSERT INTO VerhuurdeAccessoire VALUES(9999, 89);
-- 3.14
-- Positieve test
insert into VerhuurdeAccessoire 
values(1, 100)
-- deze barcode bestaat

-- Negatieve test
insert into VerhuurdeAccessoire 
values(1, 101)
-- deze barcode bestaat niet

-- 3.15
-- Positieve test
insert into VerhuurdeFiets
values(2342, 100, null)
-- Dit huurovereenkomstnummer bestaat

-- Negatieve test
insert into VerhuurdeFiets
values(2343, 100, null)
-- Dit huurovereenkomstnummer bestaat niet

-- 3.16
-- Positieve test
insert into VerhuurdeFiets
values(1, 100, null)
-- Dit frame nummer bestaat

-- Negatieve test
insert into VerhuurdeFiets
values(1, 102, null)
-- Dit frame nummer bestaat niet

-- 3.17
-- Positieve test
insert into VerhuurdeFiets
values(1, 100, 1000)
-- Dit polisnummer bestaat

-- Negatieve test
insert into VerhuurdeFiets
values(1, 100, 2615)
-- Dit polisnummer bestaat niet

