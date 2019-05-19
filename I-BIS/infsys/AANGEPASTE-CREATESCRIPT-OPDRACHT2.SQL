-- Opdracht 2
-- A
ALTER TABLE Klant 
ADD CONSTRAINT CK_Klant CHECK (geslacht IN('M', 'V'))

-- B
ALTER TABLE Huurovereenkomst
ADD CONSTRAINT CK_VerhuurBeginEindDatum CHECK (Startdatum < Einddatum);

-- C
ALTER TABLE Schade 
ADD CONSTRAINT CK_SchadeStartBetaalDatum CHECK (StartDatum <= BetaalDatum);
-- LET OP: bij deze constraint moet de startdatum kleiner of GELIJK AAN de betaaldatum zijn, omdat anders de constraint niet kan worden uitgevoerd. Dit komt omdat de data in de tabel al regels bevat waar de startdatum gelijk is aan de betaaldatum.

-- D
ALTER TABLE Klant
ADD CONSTRAINT U_KlantEmail UNIQUE (EmailAdres)

-- E
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


-- F
ALTER TABLE Fiets 
ADD CONSTRAINT CK_FietsDagprijsNieuwwaarde CHECK (Dagprijs < Nieuwwaarde)

-- G
ALTER TABLE Medewerker
ADD CONSTRAINT CK_Medewerker CHECK (DATEDIFF(year,geboortedatum,getdate()) > 17)

ALTER TABLE Klant
ADD CONSTRAINT CK_Klant CHECK (DATEDIFF(year,geboortedatum,getdate()) > 17)

-- I
Create Function CheckAccessoires(@HuurovereenkomstNr int)
RETURNS BIT
AS
Begin

IF exists(select h.HuurovereenkomstNr, COUNT(vf.FrameNr) as aantal_Fietsen, COUNT(va.Barcode) as aantal_Accessoires
from Huurovereenkomst h
inner join VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
inner join VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
where h.HuurovereenkomstNr = @HuurovereenkomstNr
group by h.HuurovereenkomstNr
having COUNT(va.Barcode) > (COUNT(vf.FrameNr) * 2))
RETURN 1;
RETURN 0;
END;

ALTER TABLE Huurovereenkomst
ADD CONSTRAINT CHECK(dbo.CheckAccessoires(HuurovereenkomstNr) = 0)

-- J
Create Function CheckSchadeFiets(@FrameNr int)
RETURNS BIT
AS
Begin

IF exists(select * from Schade 
where FrameNr = @FrameNr and FrameNr NOT in (select FrameNr from VerhuurdeFiets group by FrameNr))
RETURN 1;
RETURN 0;
END;

ALTER TABLE Schade
ADD CONSTRAINT CHECK(dbo.CheckSchadeFiets(FrameNr) = 0)

-- K.1
ALTER TABLE Medewerker
ADD CONSTRAINT U_MedewerkerInlognaam UNIQUE (Inlognaam)

-- K.2
ALTER TABLE Fiets
ADD CONSTRAINT CK_FietsDagprijs CHECK (Dagprijs > 0)

-- K.3
ALTER TABLE Accessoire
ADD CONSTRAINT CK_AccessoireDagprijs CHECK (Dagprijs > 0)

