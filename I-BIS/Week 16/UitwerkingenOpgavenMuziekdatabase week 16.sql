/* A. Maak een functie die het maximum bepaalt tussen 2 getallen */

CREATE FUNCTION dbo.GeefMax (@a INT, @b INT)
RETURNS INT
AS
BEGIN
IF (@a > @b)
  RETURN @a
ELSE
  RETURN @b

RETURN 0 --eis van SQL Server:
         --laatste regel moet een RETURN zijn.
END

SELECT dbo.GeefMax(4, 6)

/* B. Voor de muziekdatabase geldt de volgende harde beperkingsregel: 
het jaartal van een stuk moet hoger zijn dan het geboortejaar van de 
componist van het stuk. */

ALTER TABLE Stuk WITH CHECK -- NOCHECK kan ook. Dan worden bestaande records niet gecontroleerd op de toe te voegen contraint
ADD CONSTRAINT CHK_SpeelduurOrigineel CHECK
(dbo.fnCHK_JaartalMetGeboortedatumComponist(componistid,jaartal) = 1)

CREATE FUNCTION dbo.fnCHK_JaartalMetGeboortedatumComponist
  (@componistId NUMERIC(4,0), @jaartal NUMERIC(4,0))
RETURNS BIT --1 or 0
AS
BEGIN
RETURN  CASE WHEN EXISTS(
   SELECT *
   FROM Componist
   WHERE componistId = @componistId
   AND YEAR(geboortedatum) < @jaartal)
THEN 1--OK
ELSE 0--Niet OK
  END
END
GO


/* C. Schrijf een user defined function die de leeftijd in dagen geeft voor een gegeven datum.
Maak eventueel gebruik van de DATEDIFF functie */
 
SELECT dbo.fnLeeftijdInDagen('26-Jun-1971') 
	as LeeftijdInDagen



IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'dbo.fnLeeftijdInDagen') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.fnLeeftijdInDagen
GO

CREATE FUNCTION dbo.fnLeeftijdInDagen (@geboortedatum DATETIME)
RETURNS INT
AS
BEGIN

RETURN DATEDIFF(day, @geboortedatum, GETDATE())

END
GO

SELECT dbo.fnLeeftijdInDagen('1969-05-07') AS LeeftijdInDagen



/* D. Creëer een view (virtuele tabel) met voor elke componist de componistId, de naam en het aantal speelstukken. */
USE muziekdatabase

IF EXISTS (SELECT * FROM sys.views WHERE NAME = 'SpeelstukkenPerComponist')
DROP VIEW SpeelstukkenPerComponist
GO

CREATE VIEW SpeelstukkenPerComponist (componistId, naam, aantal)
AS  SELECT  C.componistId, naam, COUNT(*)
  FROM  Componist C INNER JOIN Stuk S 
  ON C.componistId = S.componistId
  WHERE  niveaucode IS NOT NULL
  GROUP BY  C.componistId, naam

SELECT * FROM SpeelstukkenPerComponist
