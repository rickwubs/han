-- Opdracht 6
-- a) Alle fietsen gesorteerd naar soort (elektrisch, dames/heren)
SELECT *
FROM Fiets
ORDER BY Elektrisch, DamesOfHeren;

-- b) Alle fietsen die in 2012 schade hebben gehad
SELECT *
FROM Fiets
JOIN Schade ON Schade.FrameNr=Fiets.FrameNr
WHERE Schade.Startdatum &gt;= ‘2012-01-01 00:00:00’ and Schade.Startdatum &lt; ‘2013-01-01
00:00:00’;

-- c) Alle klanten die momenteel een fiets hebben gehuurd
SELECT *
FROM Klant
JOIN Huurovereenkomst ON Huurovereenkomst.KlantNr=Klant.KlantNr
WHERE Huurovereenkomst.Startdatum &lt; GETDATE() and Huurovereenkomst.Einddatum &gt;
GETDATE() and Huurovereenkomst.StatusOmschrijving &lt;&gt; ‘Geannuleerd’

-- d) De fietsen en accessoires die gehuurd zijn onder huurovereenkomst 15
SELECT *
FROM VerhuurdeFiets
LEFT JOIN Fiets ON VerhuurdeFiets.FrameNr=Fiets.FrameNr
WHERE VerhuurdeFiets.HuurovereenkomstNr=15
OR
WHERE value IN ( SELECT * FROM VerhuurdeAccessoire
LEFT JOIN Accessoire ON VerhuurdeAccessoire.Barcode=Accessoire.Barcode
WHERE VerhuurdeAccessoire.HuurovereenkomstNr = 15;
)

-- e) De huurovereenkomsten waarin een Gazelle fiets is gehuurd
SELECT *
FROM Huurovereenkomst
LEFT JOIN VerhuurdeFiets ON Huurovereenkomst.HuurovereenkomstNr
=VerhuurdeFiets.HuurovereenkomstNr
WHERE value IN ( SELECT * FROM VerhuurdeFiets
LEFT JOIN Fiets ON Fiets.FrameNr= VerhuurdeFiets.FrameNr
WHERE Fiets.Merknaam = ‘Gazelle’
)

-- f) Alle klanten met nog niet betaalde rekeningen
SELECT *
FROM Klant
JOIN Huurovereenkomst ON Klant.KlantNr=Huurovereenkomst.KlantNR

WHERE Huurovereenkomst.Betaaldatum IS NULL

-- g) Aantal gereserveerde, geannuleerde en betaalde huurovereenkomsten
SELECT *
FROM Huurovereenkomst
WHERE Statusomschrijving = ‘Gereserveerd’
OR Statusomschrijving = ‘Geannuleerd”
OR Betaaldatum IS NOT NULL