
/* 13*/
/* a.	Geef alle gegevens van klassieke stukken.*/
/* b.	Geef stuknummer en titel van alle klassieke stukken. Orden de stukken op titel.*/
/* c.	Geef van alle speelstukken van na 1995 het stuknummer, het genre,
 het niveau en de speelduur. Orden het overzicht op speelduur (van groot 
 naar klein), en bij gelijke speelduur op genre.*/
/* d.	Geef stuknummer, titel en genre van alle stukken die een bewerking zijn van stuk 5. Orden op titel.*/
/* e.	Geef de componistId, de naam en de geboortedatum van alle 
componisten die als docent verbonden zijn aan een muziekschool.
 Orden op geboortedatum (van jong naar oud ).*/
/* f.	Geef van alle speelstukken van na 1995 het stuknummer, het genre,
 de niveau-omschrijving en de speelduur. Orden het overzicht op speelduur
  (van groot naar klein), en bij gelijke speelduur op genre.*/
/* g.	Geef van alle muziekscholen, het schoolid, de naam en plaatsnaam afgebeeld in één kolom genaamd school.*/
/* h.	Geef alle stukken die momenteel geen niveau-aanduiding hebben.
 Toon hiervan het het stuknummer en de titel gesorteerd op titel.*/
/* i.	Geef alle stukken die in de 18e eeuw gecomponeerd zijn. Toon het stuknummer, de titel en het jaartal, gesorteerd op jaartal met de meest recente bovenaan.*/
/* j.	Geef alle stukken die gecomponeerd zijn door een componist 
geboren na 1 januari 1900. Toon het stuknummer, de titel, het jaartal, de naam en geboortedatum van de componist, gesorteerd op geboortedatum met de oudste componist bovenaan en 
daarna titel.*/
/* k.	Geef alle componisten die werkzaam zijn bij een muziekschool 
uit Amsterdam. Toon componistid, de naam van de componist, schoolid en 
in 1 kolom de naam van de
 school met tussen haakjes de plaatsnaam 
 (noem deze kolom muziekschoolenplaats).*/
 
 /*14*/
 /* Vul voor elke componist het geslacht in. */

 /* Muziekschool 2 (Het Muziekpakhuis) verhuist van Amsterdam naar Haarlem 
en de naam wordt gewijzigd in The Music Warehouse. */

/* Verwijder alles uit de tabel Stuk. */

/* Verwijder alle klassieke stukken. */

/* Verwijder alle componisten waarvoor geen stuk aanwezig is. */

-- Realiseer de volgende constraint: De speelduur van een stuk is groter dan 0 en kleiner dan 10.

/*15*/
	/* A. Geef van alle stukken van na 1995 het stuknummer, de naam van de componist en het genre. */
/* Graag 1 uitwerking zonder JOIN en 1 uitwerking met JOIN. */ 
/* B. Geef alle componisten, aangevuld met (indien van toepassing) de gegevens van de muziekschool. */
/* C. Geef het stuknummer, de titel en de componistnaam van alle stukken die zijn gecomponeerd
 door een muziekschooldocent. */

 /* Dezelfde vraag als bij onderdeel C, maar geef nu ook de naam van de muziekschool waar de betreffende componist werkt. */

/* Geef voor alle jazzstukken het stuknummer, de titel, de speelduur en 
als het een speelstuk betreft ook de niveauomschrijving. */
/* -- Een speelstuk is een stuk met een niveaucode -- */

/* Geef van alle bewerkingen het stuknummer, de titel en het stuknummer en de titel van 
het bijbehorende origineel. */

/* Geef componistId en naam van alle componisten met twee of meer speelstukken. */

/* Geef stuknummer, titel en speelduur van het kortste stuk. */

/* Geef stuknummer, titel en speelduur van het kortste stuk voor beginners. */

/* Geef stuknummer en titel van alle stukken die gecomponeerd zijn 
door een docent van een Amsterdamse muziekschool. */

/* Geef stuknummer, titel en speelduur van het kortste stuk. */

-- Met ALL-operator

/* Welke componist heeft het grootste aantal speelstukken? 
Geef id, naam en aantal stukken van deze componist. */

/*16*/
/* A. Maak een functie die het maximum bepaalt tussen 2 getallen */

/* B. Voor de muziekdatabase geldt de volgende harde beperkingsregel: 
het jaartal van een stuk moet hoger zijn dan het geboortejaar van de 
componist van het stuk. */

/* C. Schrijf een user defined function die de leeftijd in dagen geeft voor een gegeven datum.
Maak eventueel gebruik van de DATEDIFF functie */
 
/* D. Creëer een view (virtuele tabel) met voor elke componist de componistId, de naam en het aantal speelstukken. */