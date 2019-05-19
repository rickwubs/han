	/* A. Geef van alle stukken van na 1995 het stuknummer, de naam van de componist en het genre. */
/* Graag 1 uitwerking zonder JOIN en 1 uitwerking met JOIN. */
USE muziekdatabase

SELECT S.stuknr, c.naam, S.genrenaam
FROM Stuk AS S, Componist AS C
WHERE S.componistId = C.componistId
AND jaartal > 1995

SELECT S.stuknr, c.naam, S.genrenaam
FROM Stuk AS S JOIN Componist AS C
ON S.componistId = C.componistId
WHERE jaartal > 1995

 
/* B. Geef alle componisten, aangevuld met (indien van toepassing) de gegevens van de muziekschool. */
SELECT C.componistId, C.naam, S.schoolId, S.naam, S.plaatsnaam  
FROM Componist AS C LEFT JOIN Muziekschool AS S
ON C.schoolId = S.schoolId


/* C. Geef het stuknummer, de titel en de componistnaam van alle stukken die zijn gecomponeerd
 door een muziekschooldocent. */
SELECT s.stuknr, s.titel, c.naam
FROM Stuk AS S INNER JOIN Componist AS C
ON S.componistid = c.componistid
WHERE C.schoolid IS NOT NULL


/* Dezelfde vraag als bij onderdeel C, maar geef nu ook de naam van de muziekschool waar de betreffende componist werkt. */
USE muziekdatabase
SELECT s.stuknr, s.titel, c.naam, m.naam
FROM Stuk AS S INNER JOIN Componist AS C
ON S.componistid = c.componistid INNER JOIN Muziekschool M 
ON C.schoolId = M.schoolId


/* Geef voor alle jazzstukken het stuknummer, de titel, de speelduur en 
als het een speelstuk betreft ook de niveauomschrijving. */
/* -- Een speelstuk is een stuk met een niveaucode -- */
SELECT S.stuknr, S.titel, S.speelduur, N.omschrijving
FROM Stuk AS S LEFT JOIN Niveau N
ON S.niveaucode = N.niveaucode
WHERE genrenaam = 'Jazz' 

SELECT * FROM Stuk

/* Geef van alle bewerkingen het stuknummer, de titel en het stuknummer en de titel van 
het bijbehorende origineel. */
USE muziekdatabase
SELECT S.stuknr, S.titel, O.stuknr AS 'Stuknr Origineel', O.titel AS 'Titel Origineel'
FROM Stuk AS S INNER JOIN Stuk O
ON S.stuknrOrigineel = O.stuknr


/* Geef componistId en naam van alle componisten met twee of meer speelstukken. */
USE muziekdatabase
SELECT  componistId, naam
FROM  Componist
WHERE  componistId IN (
	SELECT  componistId
	FROM  Stuk
	WHERE  niveaucode IS NOT NULL
	GROUP BY  componistId
	HAVING  COUNT(*) >= 2)

SELECT s.componistId, naam FROM Stuk S INNER JOIN Componist C
ON S.componistId = c.componistId
WHERE niveaucode IS NOT NULL
GROUP BY s.componistId, c.naam
HAVING  COUNT(*) >= 2
ORDER BY 1


/* Geef stuknummer, titel en speelduur van het kortste stuk. */
SELECT  stuknr, titel, speelduur
FROM  Stuk
WHERE  speelduur = (
	SELECT  MIN(speelduur)
    FROM  Stuk)

/* Geef stuknummer, titel en speelduur van het kortste stuk voor beginners. */
SELECT  stuknr, titel, speelduur, niveaucode
FROM  Stuk
WHERE  speelduur = (
	SELECT  MIN(speelduur)
	FROM  Stuk
	WHERE  niveaucode = 'A')
AND niveaucode = 'A'

/* Geef stuknummer en titel van alle stukken die gecomponeerd zijn 
door een docent van een Amsterdamse muziekschool. */
SELECT  stuknr, titel
FROM  Stuk
WHERE  componistId IN (
	SELECT  componistId
	FROM  Componist
	WHERE  schoolId IN (
		SELECT  schoolId
		FROM  Muziekschool
		WHERE  plaatsnaam = 'Amsterdam'))

/* Geef stuknummer, titel en speelduur van het kortste stuk. */
SELECT  stuknr, titel, speelduur
FROM  Stuk
WHERE  speelduur = (
	SELECT  MIN(speelduur)
	FROM  Stuk)

-- Met ALL-operator
SELECT  stuknr, titel, speelduur
FROM  Stuk
WHERE  speelduur <= ALL (
	SELECT  speelduur
	FROM  Stuk
    WHERE  speelduur IS NOT NULL)

/* Welke componist heeft het grootste aantal speelstukken? 
Geef id, naam en aantal stukken van deze componist. */
USE muziekdatabase

SELECT  C.componistId, C.naam, COUNT(*)
FROM  Componist C INNER JOIN Stuk S 
ON C.componistId = S.componistId
WHERE  niveaucode IS NOT NULL
GROUP BY  C.componistId, C.naam
HAVING  COUNT(*) >= ALL  (
	SELECT  COUNT(*)
	FROM  Stuk
	WHERE  niveaucode IS NOT NULL
	GROUP BY  componistId)

	SELECT * FROM Stuk
	SELECT * FROM Componist


	-- SELECT * FROM Table1 HAVING Column1 > 10
SELECT * FROM Stuk INNER JOIN Componist ON Stuk.componistId = Componist.componistId

SELECT * FROM Componist
SELECT MAX(COUNT(*)) FROM Stuk GROUP BY componistId[2017-12-19 20:32:28] [S0001][130] Cannot perform an aggregate function on an expression containing an aggregate or a subquery.