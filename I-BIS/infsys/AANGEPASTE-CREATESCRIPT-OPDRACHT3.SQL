-- Opdracht 3

ALTER TABLE Accessoire ADD CONSTRAINT FK_Accessoire_0 FOREIGN KEY (Soort) REFERENCES
AccessoireSoort (Soort) ON UPDATE CASCADE ON DELETE RESTRICT;
--uitleg: als de soort veranderd wordt, moeten de bijbehorende accessoires geupdate worden. Echter een soort mag niet verwijderd worden als er nog accessoires van geleverd worden.

ALTER TABLE Accessoire ADD CONSTRAINT FK_Accessoire_1 FOREIGN KEY (MerkNaam)
REFERENCES Merk (MerkNaam) ON UPDATE CASCADE ON DELETE CASCADE;
-- Uitleg: wanneer een merk van naam wijzigt, moeten alle instanties van dit merk meeveranderen. Wanneer een merk verwijderd wordt (niet langer geleverd), worden alle instanties van dit merk ook uit de handel gehaald.

ALTER TABLE Fiets ADD CONSTRAINT FK_Fiets_0 FOREIGN KEY (MerkNaam) REFERENCES Merk
(MerkNaam) ON UPDATE CASCADE ON DELETE CASCADE;
-- Uitleg: zie vorige.

ALTER TABLE Schade ADD CONSTRAINT FK_Schade_0 FOREIGN KEY (Inlognaam) REFERENCES
Medewerker (Inlognaam) ON UPDATE CASCADE ON DELETE RESTRICT;
-- Uitleg: wanneer een andere medewerker aan de schade wordt gekoppeld, wordt deze schade aangpast. Wanneer een medewerker wordt verwijderd, blijft de schade (en welke medewerker hiervoor verantwoordelijk was) bestaan.

ALTER TABLE Schade ADD CONSTRAINT FK_Schade_1 FOREIGN KEY (FrameNr) REFERENCES Fiets
(FrameNr) ON UPDATE CASCADE ON DELETE RESTRICT;
-- Uitleg: zie vorige

ALTER TABLE Schade ADD CONSTRAINT FK_Schade_2 FOREIGN KEY (Werkzaamheden) REFERENCES
Werkzaamheden (Werk) ON UPDATE CASCADE ON DELETE RESTRICT;
-- Uitleg: zie vorige.

ALTER TABLE MedewerkerRol ADD CONSTRAINT FK_MedewerkerRol_0 FOREIGN KEY (Rolnaam)
REFERENCES Rol (Rolnaam) ON UPDATE CASCADE ON DELETE CASCADE;
-- Uitleg: wanneer een rolnaam wordt aangepast, moet deze voor alle medewerkers aangepast worden. Wanneer een rolnaam wordt verwijderd, moet deze tevens van de bijbehorende werknemers worden verwijderd (hij bestaat immers niet meer). De werknemer zelf blijft bestaan, het is namelijk slechts een koppeltabel.

ALTER TABLE MedewerkerRol ADD CONSTRAINT FK_MedewerkerRol_1 FOREIGN KEY (Inlognaam)
REFERENCES Medewerker (Inlognaam) ON UPDATE CASCADE ON DELETE CASCADE;
-- Uitleg: zie vorige.

ALTER TABLE TelefoonNummer ADD CONSTRAINT FK_Telefoonnr_0 FOREIGN KEY (KlantNr)
REFERENCES Klant (KlantNr) ON UPDATE CASCADE ON DELETE CASCADE;
-- Uitleg: wanneer een klant wordt gewijzigd, moet het telefoonnummer mee veranderen. Wanneer een klant wordt verwijderd, moeten tevens alle instanties van persoonsgegevens worden verwijderd (avg).

ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_0 FOREIGN KEY
(KlantNr) REFERENCES Klant (KlantNr) ON UPDATE CASCADE ON DELETE NO ACTION;
-- Uitleg: wanneer een klant wordt aangepast, moet tevens de bijbehorende huurovereenkomst worden aangepast. Wanneer een klant wordt verwijderd, blijven de huurovereenkomsten bestaan.

ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_1 FOREIGN KEY
(Inlognaam) REFERENCES Medewerker (Inlognaam) ON UPDATE CASCADE ON DELETE NO ACTION;
-- Uitleg: zie vorige.

ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_2 FOREIGN KEY
(StatusOmschrijving) REFERENCES HuurovereenkomstStatus (StatusOmschrijving) ON UPDATE
CASCADE ON DELETE RESTRICT;
-- Uitleg: wanneer een status veranderd, dient de status van de huurovereenkomst mee te veranderen. Een statusomschrijving kan niet worden verwijderd zolang de huurovereenkomst bestaat.

ALTER TABLE VerhuurdeAccessoire ADD CONSTRAINT FK_VerhuurdeAccessoire_0 FOREIGN KEY
(HuurovereenkomstNr) REFERENCES Huurovereenkomst (HuurovereenkomstNr) ON UPDATE
CASCADE ON DELETE CASCADE;
-- Uitleg: wanneer een huurovereenkomst gewijzigd wordt, dient de verhuurd accessoire binnen deze overeenkomst mee te veranderen. Wanneer een huurovereenkomst niet langer bestaat (bijvoorbeeld geannuleerd), zijn de accessoires niet langer verhuurdeaccessoires en dienen deze verwijderd te worden.

ALTER TABLE VerhuurdeAccessoire ADD CONSTRAINT FK_VerhuurdeAccessoire_1 FOREIGN KEY
(Barcode) REFERENCES Accessoire (Barcode) ON UPDATE NO ACTION ON DELETE NO ACTION;
-- Uitleg: wanneer een accessoire gewijzigd wordt, veranderd dit niets aan de status van de accessoire in het verleden (ten tijde van de verhuur), dus in beide gevallen no action.

ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_0 FOREIGN KEY
(HuurovereenkomstNr) REFERENCES Huurovereenkomst (HuurovereenkomstNr) ON UPDATE
CASCADE ON DELETE CASCADE;
-- Uitleg: zelfde als FK-VerhuurdeAccessoire_0

ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_1 FOREIGN KEY (FrameNr)
REFERENCES Fiets (FrameNr) ON UPDATE NO ACTION ON DELETE NO ACTION;
-- Uitleg: zelfde als FK_VerhuurdeAccessoire_1

ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_2 FOREIGN KEY
(Polisnummer) REFERENCES Verzekering (Polisnummer) ON UPDATE CASCADE ON DELETE NO
ACTION;
-- Uitleg: wanneer een polisnummer wordt aangepast, dient deze tevens bij de verhuur aangepast te worden. Wanneer een polis wordt verwijderd (bijvoorbeeld het niet hebben van een verzekering), dient de record van de verhuurde fiets niet verwijderd te worden.