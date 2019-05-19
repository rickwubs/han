/* Vul voor elke componist het geslacht in. */
USE muziekdatabase

ALTER TABLE Componist
ADD geslacht VARCHAR(1)

UPDATE Componist
SET geslacht = 'M'

UPDATE Componist
SET geslacht = 'F'
WHERE naam = 'Sofie Bergeijk'


SELECT * FROM Muziekschool


/* Muziekschool 2 (Het Muziekpakhuis) verhuist van Amsterdam naar Haarlem 
en de naam wordt gewijzigd in The Music Warehouse. */
UPDATE Muziekschool
SET plaatsnaam = 'Haarlem'
WHERE naam = 'Het Muziekpakhuis'
UPDATE Muziekschool
SET naam = 'The Music Warehouse'
WHERE naam = 'Het Muziekpakhuis'


/* Verwijder alles uit de tabel Stuk. */
UPDATE Stuk
SET stuknrOrigineel = NULL

DELETE FROM Bezettingsregel
DELETE FROM Stuk


/* Verwijder alle klassieke stukken. */
DELETE FROM Bezettingsregel
WHERE stuknr IN (
SELECT stuknr FROM Stuk
WHERE genrenaam = 'klassiek')

UPDATE Stuk
SET stuknrOrigineel = NULL
WHERE stuknrOrigineel IN (
SELECT stuknr FROM Stuk
WHERE genrenaam = 'klassiek')

DELETE FROM Stuk
WHERE genrenaam = 'Klassiek'


/* Verwijder alle componisten waarvoor geen stuk aanwezig is. */
/* Geen resultaten! */
DELETE FROM Componist
WHERE componistId NOT IN (
SELECT componistId FROM Stuk)



-- Realiseer de volgende constraint: De speelduur van een stuk is groter dan 0 en kleiner dan 10.
alter table stuk
add constraint CH_SPEELDUUR check (speelduur between 1 and 9)

--Niet goed:
ALTER TABLE Stuk
ADD CONSTRAINT CK_Speelduur CHECK (speelduur BETWEEN 0 AND 10)
