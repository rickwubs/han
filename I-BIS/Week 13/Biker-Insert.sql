/*==============================================================*/
/* Database name:  BIKER INSERT SCRIPT                          */
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     10/27/2018 11:22:09 AM                       */
/* Last update on: 12/13/2018 12:22:09 AM                       */
/*==============================================================*/

use BIKER
SET NOCOUNT ON
go

/* Alle DeleteStatements in goede volgorde om tabellen leeg te maken*/

DELETE FROM VerhuurdeAccessoire
DELETE FROM Accessoire
DELETE FROM AccessoireSoort
DELETE FROM MedewerkerRol
DELETE FROM Rol
DELETE FROM Schade
DELETE FROM VerhuurdeFiets
DELETE FROM Verzekering
DELETE FROM Fiets
DELETE FROM Merk
DELETE FROM Huurovereenkomst
DELETE FROM Medewerker
DELETE FROM HuurovereenkomstStatus
DELETE FROM Klant
DELETE FROM TelefoonNummer
DELETE FROM Werkzaamheden

/* AccessoireSoort*/
INSERT INTO AccessoireSoort([Soort]) VALUES('Kinderzitje');
INSERT INTO AccessoireSoort([Soort]) VALUES('Helm');
INSERT INTO AccessoireSoort([Soort]) VALUES('Fietstas');


/* AccessoireMerk*/
INSERT INTO Merk([MerkNaam]) VALUES('Trek');
INSERT INTO Merk([MerkNaam]) VALUES('AGU');
INSERT INTO Merk([MerkNaam]) VALUES('Cortina');
INSERT INTO Merk([MerkNaam]) VALUES('Sparta');
INSERT INTO Merk([MerkNaam]) VALUES('Gazelle');
INSERT INTO Merk([MerkNaam]) VALUES('Cube');
INSERT INTO Merk([MerkNaam]) VALUES('Giant');
INSERT INTO Merk([MerkNaam]) VALUES('Batavus');


/* Accessoires*/
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(1,'Kinderzitje','Trek','Topper afneembaar','5','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(2,'Kinderzitje','Trek','Regular','7','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(3,'Kinderzitje','Trek','Supreme afneembaar','3','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(4,'Kinderzitje','Trek','Basic','5','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(5,'Kinderzitje','AGU','Supreme','7','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(6,'Kinderzitje','AGU','Basic','10','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(7,'Kinderzitje','AGU','Supreme','7','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(8,'Kinderzitje','AGU','Supreme','7','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(9,'Kinderzitje','Cortina','Supreme afneembaar','3','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(10,'Kinderzitje','Cortina','Supreme','3','75');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(11,'Helm','Cortina','Supreme','3','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(12,'Helm','Cortina','Basic','10','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(13,'Helm','Sparta','Basic','10','55'); 
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(14,'Helm','Sparta','Topper','3','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(15,'Helm','Sparta','Supreme','3','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(16,'Helm','Sparta','Basic','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(17,'Helm','Gazelle','Topper','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(18,'Helm','Gazelle','Topper','10','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(19,'Helm','Gazelle','Basic','5','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(20,'Helm','Gazelle','Supreme','7','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(21,'Fietstas','Cube','Basic','3','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(22,'Fietstas','Cube','Topper afneembaar','10','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(23,'Fietstas','Cube','Regular','7','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(24,'Fietstas','Cube','Topper','3','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(25,'Fietstas','Giant','Topper afneembaar','7','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(26,'Fietstas','Giant','Regular','3','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(27,'Fietstas','Giant','Supreme','7','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(28,'Fietstas','Giant','Basic','10','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(29,'Fietstas','Batavus','Regular','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(30,'Fietstas','Batavus','Topper','10','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(31,'Kinderzitje','Batavus','Regular','5','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(32,'Kinderzitje','Batavus','Supreme','10','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(33,'Kinderzitje','Trek','Supreme','10','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(34,'Kinderzitje','Trek','Topper afneembaar','3','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(35,'Kinderzitje','Trek','Topper afneembaar','7','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(36,'Kinderzitje','Trek','Topper afneembaar','7','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(37,'Kinderzitje','AGU','Supreme','7','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(38,'Kinderzitje','AGU','Regular','3','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(39,'Kinderzitje','AGU','Regular','10','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(40,'Kinderzitje','AGU','Supreme','10','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(41,'Helm','Cortina','Topper','5','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(42,'Helm','Cortina','Topper','10','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(43,'Helm','Cortina','Supreme','10','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(44,'Helm','Cortina','Regular','5','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(45,'Helm','Sparta','Basic','7','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(46,'Helm','Sparta','Basic','3','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(47,'Helm','Sparta','Regular','7','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(48,'Helm','Sparta','Supreme','7','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(49,'Helm','Gazelle','Supreme','7','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(50,'Helm','Gazelle','Topper','7','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(51,'Fietstas','Gazelle','Basic','10','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(52,'Fietstas','Gazelle','Basic','5','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(53,'Fietstas','Cube','Topper','3','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(54,'Fietstas','Cube','Regular','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(55,'Fietstas','Cube','Regular','10','55');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(56,'Fietstas','Cube','Topper','5','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(57,'Fietstas','Giant','Topper afneembaar','10','55');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(58,'Fietstas','Giant','Regular','10','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(59,'Fietstas','Giant','Topper afneembaar','10','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(60,'Fietstas','Giant','Regular','5','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(61,'Kinderzitje','Batavus','Basic','3','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(62,'Kinderzitje','Batavus','Regular','10','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(63,'Kinderzitje','Batavus','Topper','10','75');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(64,'Kinderzitje','Batavus','Regular','3','55');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(65,'Kinderzitje','Trek','Supreme','5','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(66,'Kinderzitje','Trek','Basic','7','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(67,'Kinderzitje','Trek','Supreme','10','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(68,'Kinderzitje','Trek','Topper afneembaar','10','75');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(69,'Kinderzitje','AGU','Regular','5','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(70,'Kinderzitje','AGU','Basic','5','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(71,'Helm','AGU','Basic','7','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(72,'Helm','AGU','Basic','7','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(73,'Helm','Cortina','Basic','10','75');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(74,'Helm','Cortina','Topper','5','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(75,'Helm','Cortina','Topper','10','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(76,'Helm','Cortina','Basic','7','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(77,'Helm','Sparta','Supreme','7','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(78,'Helm','Sparta','Basic','3','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(79,'Helm','Sparta','Basic','3','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(80,'Helm','Sparta','Supreme','10','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(81,'Fietstas','Gazelle','Topper afneembaar','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(82,'Fietstas','Gazelle','Basic','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(83,'Fietstas','Gazelle','Regular','7','55');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(84,'Fietstas','Gazelle','Supreme','3','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(85,'Fietstas','Cube','Regular','3','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(86,'Fietstas','Cube','Topper','5','60');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(87,'Fietstas','Cube','Supreme','10','120');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(88,'Fietstas','Cube','Regular','5','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(89,'Fietstas','Giant','Regular','3','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(90,'Fietstas','Giant','Topper','10','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(91,'Kinderzitje','Giant','Supreme','7','45');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(92,'Kinderzitje','Giant','Supreme','3','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(93,'Kinderzitje','Batavus','Topper','5','35');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(94,'Kinderzitje','Batavus','Regular','10','150');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(95,'Kinderzitje','Batavus','Basic','5','135');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(96,'Kinderzitje','Batavus','Regular','3','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(97,'Kinderzitje','Trek','Supreme','3','90');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(98,'Kinderzitje','Trek','Basic','3','105');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(99,'Kinderzitje','Trek','Supreme','10','110');
INSERT INTO Accessoire([Barcode],[Soort],[MerkNaam],[Type],[Dagprijs],[Nieuwwaarde]) VALUES(100,'Kinderzitje','Trek','Topper','3','35');

/* Fietsen*/
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(1,'Trek','Special','H','0','50','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(2,'Trek','City','H','1','20','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(3,'Trek','Easy','H','0','35','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(4,'Trek','Flash','D','0','30','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(5,'Trek','Speed','H','1','30','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(6,'AGU','City','D','1','50','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(7,'AGU','Flash','H','1','15','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(8,'AGU','City','H','1','40','975');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(9,'Cortina','City','D','0','40','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(10,'Cortina','Hill','D','1','45','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(11,'Cortina','Speed','H','1','45','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(12,'Cortina','Hill','D','1','20','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(13,'Sparta','City','H','0','45','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(14,'Sparta','Special','H','1','45','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(15,'Sparta','Flash','D','1','35','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(16,'Sparta','City','H','1','35','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(17,'Gazelle','Flash','D','0','50','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(18,'Gazelle','Hill','D','0','15','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(19,'Gazelle','City','H','0','45','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(20,'Gazelle','Flash','D','0','30','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(21,'Cube','Easy','D','0','30','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(22,'Cube','City','D','1','30','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(23,'Cube','City','H','0','30','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(24,'Cube','Easy','H','0','30','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(25,'Giant','Speed','H','1','30','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(26,'Giant','Speed','D','1','40','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(27,'Giant','Special','D','1','40','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(28,'Giant','Easy','H','0','15','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(29,'Batavus','City','H','0','30','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(30,'Batavus','Special','H','0','30','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(31,'Batavus','Hill','H','1','45','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(32,'Batavus','Speed','D','1','50','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(33,'Trek','Special','D','1','35','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(34,'Trek','Easy','D','1','35','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(35,'Trek','Speed','H','1','25','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(36,'Trek','Special','D','1','15','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(37,'AGU','Speed','H','0','15','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(38,'AGU','Speed','H','1','15','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(39,'AGU','Speed','H','1','25','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(40,'AGU','Easy','H','1','45','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(41,'Cortina','Speed','H','1','15','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(42,'Cortina','Special','H','1','30','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(43,'Cortina','City','H','1','15','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(44,'Cortina','Easy','D','1','30','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(45,'Sparta','Hill','D','0','45','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(46,'Sparta','Flash','H','1','50','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(47,'Sparta','Special','D','0','30','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(48,'Sparta','Flash','D','1','45','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(49,'Gazelle','Special','H','1','20','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(50,'Gazelle','Special','D','1','20','975');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(51,'Gazelle','City','H','0','35','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(52,'Gazelle','Flash','D','1','45','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(53,'Cube','City','H','1','35','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(54,'Cube','Special','D','0','30','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(55,'Cube','Flash','D','0','15','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(56,'Cube','City','D','0','50','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(57,'Giant','Easy','D','0','50','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(58,'Giant','Hill','D','0','45','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(59,'Giant','Flash','H','0','50','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(60,'Giant','Hill','H','0','15','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(61,'Batavus','Hill','H','0','15','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(62,'Batavus','Speed','D','0','15','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(63,'Batavus','Easy','H','1','30','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(64,'Batavus','City','D','0','50','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(65,'Trek','Hill','H','0','35','2690');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(66,'Trek','Easy','D','0','40','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(67,'Trek','Easy','D','1','25','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(68,'Trek','Flash','H','1','35','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(69,'AGU','Flash','D','0','25','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(70,'AGU','Speed','D','0','40','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(71,'AGU','Flash','D','1','45','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(72,'AGU','Flash','H','1','35','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(73,'Cortina','Easy','D','0','20','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(74,'Cortina','Special','D','1','50','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(75,'Cortina','Flash','D','0','40','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(76,'Cortina','Flash','D','1','15','1050');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(77,'Sparta','Speed','H','0','30','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(78,'Sparta','Easy','D','1','45','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(79,'Sparta','City','D','0','40','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(80,'Sparta','Special','H','1','25','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(81,'Gazelle','Speed','H','1','35','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(82,'Gazelle','Hill','D','0','35','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(83,'Gazelle','City','D','0','15','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(84,'Gazelle','Special','D','1','45','1175');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(85,'Cube','Easy','D','1','50','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(86,'Cube','City','D','1','20','975');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(87,'Cube','Flash','H','0','50','2245');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(88,'Cube','Hill','H','0','45','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(89,'Giant','Hill','H','1','40','750');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(90,'Giant','City','H','1','35','3255');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(91,'Giant','City','H','1','40','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(92,'Giant','Speed','H','0','35','600');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(93,'Batavus','City','D','0','50','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(94,'Batavus','Flash','H','1','30','675');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(95,'Batavus','Flash','H','0','30','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(96,'Batavus','Speed','D','0','35','825');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(97,'Trek','City','D','0','45','500');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(98,'Trek','City','H','0','50','1560');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(99,'Trek','Hill','D','0','20','1890');
INSERT INTO Fiets([FrameNr],[MerkNaam],[Type],[DamesofHeren],[Elektrisch],[Dagprijs],[Nieuwwaarde]) VALUES(100,'Trek','Flash','H','0','45','750');

/* Medewerker */
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('seafood','red','1969-09-15 02:54:06','Jan','Rodrigues');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('stews','orange','1975-09-02 02:57:35','Maria','Honing');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('pies','red','1991-01-25 21:58:01','Nathalie','Reuvers');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('cereals','orange','1980-01-14 02:49:17','Maria','de Beer');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('soups','red','1956-02-07 02:32:01','John','Rodrigues');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('desserts','orange','1966-03-27 14:32:58','Rob','Reuvers');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('pasta','yellow','1987-05-23 07:06:37','Marieke','Cornelissen');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('noodles','violet','1958-07-03 18:42:17','Johan','Giessen');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('salads','red','1977-09-23 20:54:50','Marieke','Reuvers');
INSERT INTO Medewerker([Inlognaam],[Wachtwoord],[Geboortedatum],[MedewerkerVoornaam],[MedewerkerAchternaam]) VALUES('sandwiches','indigo','1979-06-25 01:14:09','Erik','Rodrigues');


/* Rol */
INSERT INTO Rol([RolNaam]) VALUES('Monteur');
INSERT INTO Rol([RolNaam]) VALUES('Verkoper');
INSERT INTO Rol([RolNaam]) VALUES('Directie');


/* MedewerkerRol */
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','cereals');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Directie','noodles');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','sandwiches');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','noodles');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','sandwiches');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Directie','soups');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','soups');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','desserts');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','cereals');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','seafood');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','salads');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','pasta');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','soups');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Monteur','stews');
INSERT INTO MedewerkerRol([Rolnaam],[Inlognaam]) VALUES('Verkoper','pies');

/* Klant */
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(1,'Vladimir','Frederick','9793 Diam Avenue','5409XJ','Phoenix','amet.dapibus@parturientmontesnascetur.com','1991-04-19 10:31:44','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(2,'Thomas','Delgado','Ap #364-1470 Condimentum. Rd.','5114WA','Canmore','in@necleoMorbi.ca','1970-05-14 23:08:07','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(3,'Eaton','Stevens','255-5716 Libero Street','5060XZ','Kızılcahamam','dis.parturient.montes@Cumsociis.com','1983-05-13 19:09:47','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(4,'William','Battle','703-1280 Sed Street','8859OS','Vilvoorde','luctus.sit.amet@velitAliquamnisl.co.uk','1991-04-01 05:41:05','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(5,'Basil','Bishop','Ap #640-4014 Nunc Road','3487DR','Nizip','tellus.Phasellus.elit@arcuacorci.net','1960-03-10 02:21:00','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(6,'Thor','Hewitt','P.O. Box 606, 619 Mauris Rd.','7306JW','Zutendaal','neque.Sed.eget@dolor.net','1946-09-01 18:51:51','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(7,'Addison','Chandler','902-6320 Ac Ave','5991HZ','Bersillies-l''Abbaye','aliquam.enim.nec@mattisIntegereu.net','1979-06-03 14:29:35','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(8,'Charles','Burris','Ap #125-1583 Quam Rd.','3818UL','Saltcoats','In.scelerisque@nuncacmattis.edu','1954-12-22 12:59:22','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(9,'Ezra','Hunt','622-4078 Adipiscing St.','8624ZF','Tiarno di Sopra','tristique.aliquet.Phasellus@odiosagittissemper.com','1944-03-15 09:41:17','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(10,'Theodore','Decker','527-9953 Ultricies Ave','8880JB','Driekapellen','sollicitudin.commodo@ligulaelitpretium.com','1992-08-02 02:33:35','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(11,'Dean','Morrison','Ap #490-4406 In Rd.','2267HL','Alvito','mauris.sagittis.placerat@facilisis.co.uk','1965-04-30 14:51:31','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(12,'Benjamin','Clements','P.O. Box 530, 4201 Elementum Rd.','5992UZ','Sommethonne','dui.Cras@velquamdignissim.co.uk','1979-03-31 08:39:00','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(13,'Dieter','Hill','442-9003 Ipsum. Ave','8255ML','Boorsem','Vestibulum@est.com','1984-04-01 23:27:30','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(14,'Jesse','Simon','P.O. Box 401, 3461 Nec, Rd.','0922KL','Smithers','non.massa.non@arcuVestibulum.net','1944-07-06 04:55:10','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(15,'Carter','Bradshaw','P.O. Box 763, 5155 Justo Ave','0348AE','Opgrimbie','quis.massa@augueeutellus.org','1951-10-09 02:13:58','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(16,'Otto','Hogan','P.O. Box 739, 221 Dolor St.','6830OG','Anchorage','ante@tempusscelerisque.ca','1977-12-08 09:42:20','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(17,'Dexter','Gibson','5200 Ut Rd.','2371XR','Cinisi','Maecenas.ornare@augueeutempor.com','1937-08-30 19:18:37','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(18,'Lance','Everett','5876 Iaculis St.','4177YR','Wedel','magna@elementumategestas.net','1986-09-15 11:23:06','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(19,'Harper','Shields','174-7947 Ut Av.','4730UT','Pugwash','aliquam@Maurismolestie.com','1957-05-31 23:17:35','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(20,'Jerry','Holland','784-5868 Enim. Rd.','4070CY','Morvi','non.nisi.Aenean@ornareegestas.co.uk','1972-01-20 10:07:03','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(21,'Hiram','Hess','P.O. Box 399, 7458 Mauris St.','0483WB','Laon','a.auctor@bibendumsedest.ca','1948-10-12 03:40:44','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(22,'Walter','Wiggins','777-2536 Vel Ave','5625ZQ','Wetaskiwin','eget.odio.Aliquam@nonlobortis.net','1978-08-19 15:37:49','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(23,'Jessie','Smith','Ap #813-4339 Magna. Avenue','5661GG','Koekelberg','Nunc@risusIn.edu','1965-06-27 16:44:47','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(24,'Wyatt','Kline','9467 Egestas Road','2178LJ','Langenburg','at.auctor.ullamcorper@Nam.net','1951-05-06 21:52:42','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(25,'Colorado','Russo','Ap #441-8227 Dui Ave','9559RA','Camerino','eros.nec@fermentum.ca','1989-05-02 05:46:15','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(26,'Debra','Vance','Ap #986-1745 Non, St.','0659VH','Cavaion Veronese','mi@parturient.org','1940-10-18 13:49:24','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(27,'Ronan','Sweet','862 Justo Av.','2595KB','Castel San Niccolò','Quisque.varius.Nam@odioauctorvitae.ca','1972-09-16 18:45:53','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(28,'Zachery','Roth','4501 Phasellus Rd.','8775VY','Fahler','ridiculus.mus@acmattis.net','1970-04-08 19:37:13','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(29,'Malik','Christensen','9215 Dui Rd.','7126UE','Schwedt','natoque.penatibus.et@amet.com','1965-07-01 01:30:08','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(30,'Ignatius','Bowers','786 Vitae Ave','8953SL','Nelson','ad@Morbiaccumsanlaoreet.co.uk','1968-09-20 04:56:38','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(31,'July','Wolfe','P.O. Box 436, 221 Vestibulum St.','5826LQ','Weißenfels','non.magna@In.net','1985-04-02 07:23:27','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(32,'Kelly','Doyle','P.O. Box 627, 6932 Consequat St.','9356NS','Forio','sed.sem.egestas@Donectemporest.org','1987-04-14 14:28:38','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(33,'Kamal','Hall','9740 Aliquam St.','8620CM','Dublin','tempus.scelerisque.lorem@scelerisqueneque.edu','1987-06-15 03:48:45','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(34,'Lane','Bell','2432 Rhoncus. Road','3416KX','Lobbes','arcu@nequevitaesemper.net','1968-10-28 16:26:06','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(35,'Aquila','Adams','488-6207 Magnis St.','3492IO','Washington','Cras.vehicula.aliquet@CurabiturdictumPhasellus.com','1958-03-12 22:36:05','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(36,'Barry','Solomon','Ap #437-8761 Tellus. Rd.','2821UC','Vlimmeren','Sed.pharetra@magna.edu','1985-07-06 13:29:02','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(37,'Murphy','Gilbert','P.O. Box 389, 9429 Magna. Av.','9973IA','Bierk Bierghes','rutrum.urna.nec@Maurisblandit.com','1938-10-13 02:32:38','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(38,'Hayden','Johnson','9030 Sed Road','1769MV','Saumur','ac.mattis.semper@elitAliquamauctor.edu','1963-07-28 13:24:13','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(39,'Brandon','Conner','P.O. Box 732, 5186 At, Avenue','2369BR','Monacilioni','nonummy.ut.molestie@Donec.org','1938-07-09 12:04:53','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(40,'Eaton','Dejesus','Ap #539-1029 Nunc Street','3046SM','Columbus','magna.tellus@magnaCras.ca','1961-10-14 05:47:55','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(41,'Jermaine','Mcdowell','P.O. Box 554, 4446 Ante Street','7207GA','Cagli','sit.amet.ultricies@enimSed.ca','1982-02-04 05:25:21','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(42,'Orson','Goodwin','6181 Eget Street','2704XE','Daska','lacinia@Suspendisse.edu','1944-09-29 01:33:33','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(43,'Astrid','Kelley','576 Vitae Rd.','8028TD','Oetingen','ipsum.leo@sitametconsectetuer.org','1961-01-26 01:24:10','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(44,'Stone','Cannon','P.O. Box 847, 8928 Dui, Road','4841XF','Sindelfingen','faucibus@temporaugue.co.uk','1969-02-10 03:13:14','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(45,'Christopher','Pittman','Ap #446-5577 Nulla St.','9423AC','Drumheller','ridiculus.mus@pede.com','1978-02-08 01:46:38','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(46,'Geraldine','Gross','8104 Litora Rd.','0965CQ','Southaven','non.enim.commodo@cursusnon.edu','1989-04-26 23:45:02','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(47,'Marsden','Dominguez','P.O. Box 237, 7501 Quisque Avenue','4372EP','Columbus','nunc@NullamnislMaecenas.com','1977-07-17 23:16:25','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(48,'Judah','Merrill','P.O. Box 509, 3581 Congue, St.','4854LU','Welland','auctor@rutrummagnaCras.edu','1953-03-08 23:56:40','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(49,'Anthony','William','P.O. Box 522, 4152 Elit, Avenue','0194LV','Fochabers','nibh@neque.edu','1959-08-07 22:00:32','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(50,'Colorado','Mcgee','Ap #377-2767 Ac St.','5420QF','Fort St. John','sapien.cursus@ornare.ca','1991-03-07 13:37:52','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(51,'Reece','Reynolds','935 Ligula Street','8007CT','Eksaarde','velit.Quisque@eliteratvitae.ca','1948-08-17 15:31:03','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(52,'Ignatius','Newton','7766 Convallis Av.','0820VQ','Katihar','vulputate.dui@faucibusutnulla.com','1989-09-30 00:11:57','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(53,'Ronan','Wise','792-7579 Porttitor Avenue','8570RA','Bolzano/Bozen','adipiscing.elit.Curabitur@Aliquam.edu','1945-09-27 14:17:39','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(54,'Geoffrey','Moss','Ap #199-4529 Ipsum St.','2683LJ','Ruthin','diam.at@ultriciessem.ca','1944-11-19 19:04:40','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(55,'Rose','Shaw','P.O. Box 981, 6314 Interdum. Rd.','9346LZ','Saint-L�onard','congue.elit.sed@at.edu','1965-03-19 09:42:36','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(56,'Kareem','Chavez','1380 Diam Street','5330OA','Surat','Fusce.dolor@semmagnanec.org','1965-01-11 04:18:24','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(57,'Mufutau','Downs','4682 Consectetuer Avenue','8090TC','Porbandar','sit@tristiquesenectuset.com','1937-07-25 13:39:10','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(58,'Tyler','Nieves','1115 Ante, Road','6696BB','Nogales','convallis.ante.lectus@quis.ca','1953-01-16 16:08:17','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(59,'Jakeem','Medina','397-3815 Mi, St.','3814TT','Paine','nec.malesuada@at.edu','1975-12-23 01:55:51','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(60,'Slade','Jefferson','P.O. Box 630, 2606 Amet, Rd.','6908AX','Fort Laird','eu.tempor.erat@cursus.com','1962-01-12 22:29:18','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(61,'Quamar','Shaffer','Ap #972-3414 Dolor, St.','4213XZ','Épernay','a.purus@iaculisaliquet.net','1979-03-09 01:09:49','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(62,'Antoinella','Camacho','Ap #178-749 Rutrum Road','9764KW','Mont-Sainte-Genevive','risus@disparturientmontes.org','1950-02-26 18:04:15','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(63,'Ashton','James','272-7456 Ornare Ave','7056UV','Juneau','amet.faucibus.ut@ante.ca','1983-08-17 12:55:03','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(64,'Perry','Montgomery','7687 Purus. St.','8950OM','Limena','Suspendisse.eleifend.Cras@insodales.ca','1970-05-03 07:29:53','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(65,'Mason','Campbell','6343 Molestie Rd.','0500NX','Aalst','nulla.In.tincidunt@ligulaAliquam.edu','1942-02-19 11:18:39','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(66,'Dolan','Rush','Ap #328-2378 Cum Rd.','5049OC','Jalgaon','quis@iaculisodio.org','1943-10-22 21:08:36','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(67,'Barbara','Snyder','146-5022 Vel St.','6785QA','Meeffe','at@in.net','1956-07-19 08:46:42','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(68,'Arthur','Hoover','642-2165 Nunc. Rd.','2975RE','Silverton','velit.Quisque@Maecenasmalesuada.net','1938-08-01 00:34:43','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(69,'Chase','Trevino','775-8209 Lorem St.','2295QH','Frankfurt','condimentum.Donec@mollis.net','1950-02-04 16:19:52','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(70,'Gareth','Jacobson','1973 Feugiat Street','5415NT','Dannevirke','habitant@Phasellusataugue.co.uk','1941-11-07 11:21:23','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(71,'Addison','Hodges','P.O. Box 415, 2173 Sociis Rd.','7681FZ','Montone','felis.eget@pellentesqueegetdictum.ca','1954-03-10 15:16:31','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(72,'Malik','Sims','P.O. Box 455, 3775 Amet Av.','4088CL','Kozhikode','arcu.Vestibulum@non.edu','1989-08-20 10:18:34','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(73,'Eric','Swanson','786-6564 Accumsan St.','3247WE','Meldert','arcu.Aliquam@nonummy.com','1948-01-03 13:45:40','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(74,'Colt','Horn','P.O. Box 901, 3684 Pede. Rd.','0233GC','Carpignano Salentino','luctus@dolorelitpellentesque.org','1978-05-14 23:32:39','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(75,'Chester','Stevenson','9724 A Av.','3154FF','Villata','nibh.Aliquam@ligulaAliquam.co.uk','1961-01-14 07:12:37','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(76,'Alfonso','Allen','Ap #427-8245 Pede. Street','3731PI','Gagliato','nisl@euarcu.net','1962-07-01 07:54:25','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(77,'Nathaniel','Vargas','7434 Nullam Road','0406LY','Port Hope','ac.tellus.Suspendisse@semperrutrum.edu','1955-10-19 16:10:16','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(78,'Arden','Woods','Ap #604-2910 Elit Rd.','0254HP','Peñaflor','fermentum.vel@ametmassaQuisque.edu','1981-08-13 10:30:53','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(79,'Juli','Hays','5703 Adipiscing Avenue','0633FM','Columbus','dictum.Proin.eget@hendrerit.com','1953-04-06 03:48:01','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(80,'Nathalie','Mullins','P.O. Box 849, 9665 Luctus Rd.','6559YW','Oderzo','mi.lacinia.mattis@euaugue.org','1974-04-05 04:56:46','V');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(81,'Kenneth','Morse','Ap #580-9989 Aliquam Road','7145VK','Ponte nelle Alpi','elit.sed@eget.edu','1951-09-06 00:15:01','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(82,'Anthony','Estes','P.O. Box 762, 3826 Velit. St.','0183NU','Aubagne','hendrerit.Donec.porttitor@nislNullaeu.org','1983-02-08 08:07:01','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(83,'Ethan','Slater','Ap #767-2427 Amet, Rd.','3000QU','Acerra','bibendum.ullamcorper.Duis@venenatislacus.ca','1950-10-25 14:06:48','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(84,'Christopher','Evans','192-7652 Quam. Rd.','1687BW','Smithers','nisi.Cum@Proin.ca','1990-07-23 23:25:32','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(85,'Alan','Crane','200-9060 Mauris Ave','5491DV','Nellore','Sed.diam@et.net','1957-03-07 08:58:37','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(86,'Callum','Pruitt','Ap #316-5472 Lobortis Avenue','9289GQ','Borås','neque.Nullam.nisl@sollicitudinadipiscingligula.net','1937-06-18 22:39:31','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(87,'Channing','Quinn','690-5734 Natoque Street','8750ZE','Poggio San Marcello','volutpat@volutpat.net','1982-12-14 21:25:41','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(88,'Kennan','Galloway','9165 Nonummy Road','4204SK','Deline','at@antedictummi.edu','1959-12-03 23:49:22','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(89,'Gareth','Cooke','8437 Malesuada St.','5763QI','Gressan','ante.dictum@justo.co.uk','1977-06-21 00:17:03','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(90,'Gavin','Lang','P.O. Box 279, 408 Malesuada. Road','8753VD','Beauvais','tristique.pharetra@Sedeget.net','1987-05-07 00:57:56','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(91,'Boris','Bean','425-6319 Diam. Rd.','9105KL','Castel del Giudice','Integer.vitae@loremsemper.com','1943-06-26 05:47:43','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(92,'Brenden','Stone','Ap #245-8431 Adipiscing. Rd.','4174OO','Dreieich','mauris.ut@dictummi.ca','1950-11-10 01:01:55','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(93,'Malcolm','Whitaker','P.O. Box 449, 9312 Eu Ave','1217QF','Ramagundam','non@placerat.net','1977-08-24 07:51:34','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(94,'Julian','Arnold','Ap #186-5794 Mauris St.','9019PX','Feltre','eu@loremfringillaornare.org','1939-06-19 09:21:20','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(95,'Kuame','Snider','8943 Ut Rd.','4858DM','Montpelier','sem.magna.nec@Aenean.ca','1977-09-16 07:19:37','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(96,'Xander','Mayo','Ap #392-3831 Montes, Av.','4383GE','Lewiston','libero.dui@luctusipsumleo.co.uk','1950-06-18 16:01:14','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(97,'Chadwick','Hopkins','Ap #107-5598 Duis Rd.','7792CM','Rhyl','vel.lectus@velitQuisque.edu','1948-11-03 01:57:39','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(98,'Boris','Mckenzie','Ap #836-1394 Erat Avenue','0425KG','Adrano','non.dui.nec@Duis.co.uk','1972-04-03 04:46:10','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(99,'Bradley','Kelley','875-4455 Nam Road','1776XK','Beauwelz','montes@sem.edu','1981-11-06 13:47:43','M');
INSERT INTO Klant([KlantNR],[KlantVoornaam],[KlantAchternaam],[Adres],[Postcode],[Plaats],[EmailAdres],[Geboortedatum],[Geslacht]) VALUES(100,'Solomon','Travis','Ap #578-1503 Mauris St.','8264GM','Montecarotto','dolor@consequatauctor.org','1967-12-23 10:08:46','M');

/* HuurovereenkomstStatus */
INSERT INTO HuurovereenkomstStatus([StatusOmschrijving]) VALUES('Gereserveerd');
INSERT INTO HuurovereenkomstStatus([StatusOmschrijving]) VALUES('Betaald');
INSERT INTO HuurovereenkomstStatus([StatusOmschrijving]) VALUES('Geannuleerd');

/* Werkzaamheden */
INSERT INTO Werkzaamheden([Werk]) VALUES('Fietsbel vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Voorlamp vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Voorband geplakt');
INSERT INTO Werkzaamheden([Werk]) VALUES('Voorrem afgesteld');
INSERT INTO Werkzaamheden([Werk]) VALUES('Achterrem afgesteld');
INSERT INTO Werkzaamheden([Werk]) VALUES('Achterlamp vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Achterband vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Spatbord vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Stuur rechtgezet');
INSERT INTO Werkzaamheden([Werk]) VALUES('Ketting gesmeerd');
INSERT INTO Werkzaamheden([Werk]) VALUES('Spaken vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Ventiel vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Snelbinders vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Versnelling afgesteld');
INSERT INTO Werkzaamheden([Werk]) VALUES('Remblokken voor vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Remblokken achter vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Zadel vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Handvaten vervangen');
INSERT INTO Werkzaamheden([Werk]) VALUES('Standaard vervangen');



/* Huurovereenkomsten */
/* Genereer huurovereenkomsten */


IF EXISTS (select * FROM sys.views where name = 'InlogVerkopers')
	DROP VIEW InlogVerkopers;
GO

CREATE VIEW InlogVerkopers AS 
SELECT inlognaam FROM MedewerkerRol WHERE Rolnaam IN ('Directie', 'Verkoper');
GO

DECLARE @HOnr INT = 1; --HuurovereenkomstNummer
DECLARE @EersteDatum DATETIME = '2010-01-01 08:00:00'; -- Vanaf 2010 gegevens registreren (aanname)
DECLARE @StatOmsc VARCHAR(25) = ''; -- Statusomschrijving van een huurovereenkomst
DECLARE @InlgNmV VARCHAR(30) = ''; -- Inlognaam van de verkoper
DECLARE @StrtDtm DATE = @EersteDatum; -- Startdatum van huurovereenkomst
DECLARE @EndDtm DATE = ''; -- Einddatum van huurovereenkomst
DECLARE @BtlDtm DATE = ''; -- Betaaldatum van huurovereenkomst
DECLARE @KlntNr INT = 0; -- Klant gekoppeld aan huurovereenkomst
DECLARE @MndVerschil INT = DATEDIFF(Month, GETDATE(), @StrtDtm); -- Teller voor controle niet verder dan 6 maanden in toekomst reserveren (aanname)

WHILE (@MndVerschil <= 6) -- Niet meer dan 6 maanden vooruit reserveren.

BEGIN
	SET @EndDtm = (SELECT DATEADD(DAY, (FLOOR(RAND()*14)+1), @StrtDtm)); -- een huurovereenkomst heeft een duur tusen de 1 en 14 dagen (aanname)
	SET @BtlDtm = DATEADD(DAY, (FLOOR(RAND()*-4)), @StrtDtm); -- Betaaldatum = 0 tot 4 dagen eerder (aanname)
	SET @KlntNr = (SELECT FLOOR(RAND()*(SELECT COUNT (KlantNr) FROM Klant))+1); -- Een willekeurige klant
	SET @InlgNmV = (SELECT TOP 1 Inlognaam FROM InlogVerkopers ORDER BY NEWID()); -- Een willekeurige verkoper (rol:directie of verkoper)
	
	IF (SELECT (FLOOR(RAND()*10)+1)) <= 9 -- 90% huurovereenkomsten worden betaald, 10% worden 'Geannuleerd' (aanname)
		BEGIN
			IF (DATEDIFF(Day, GETDATE(), @StrtDtm) < 0) -- Huurovereenkomsten in het verleden zijn 'Betaald' (aanname)
				SET @StatOmsc = 'Betaald'
			ELSE
				SET @StatOmsc = 'Gereserveerd' -- Huurovereenkomsten in de toekomst zijn 'Gereserveerd' (aanname)
		END;
	ELSE
		BEGIN
			SET @StatOmsc = 'Geannuleerd';
			SET @BtlDtm = NULL;
		END;

	INSERT INTO Huurovereenkomst([HuurovereenkomstNr],[Startdatum],[Einddatum],[Betaaldatum],[StatusOmschrijving],[KlantNr],[Inlognaam]) 
	VALUES(@HOnr,@StrtDtm,@EndDtm,@BtlDtm,@StatOmsc,@KlntNr,@InlgNmV);
	SET @HOnr = @HOnr + 1;
	SET @StrtDtm = (SELECT DATEADD(DAY, (FLOOR(RAND()*4)), @StrtDtm)); -- Hoog de datum op tussen de 0 en 3 dagen
	SET @MndVerschil = DATEDIFF(Month, GETDATE(), @StrtDtm)

END

/* VerhuurdeFiets + VerhuurdeAccessoires */

/* Per huurovereenkomst mogen er 1 tot 4 fietsen en accessoires worden gekoppeld (aanname)*/
/* Wanneer een fiets NIET geannuleerd is moet er een Polisnummer gekoppeld worden. */
/* Een geannuleerde huurovereenkomst heeft wel fietsen en accessoires gekoppeld */
/* Per huurovereenkomst kunnen 0 tot alle gehuurde fietsen verzekerd worden.*/
/* !!Waar nog geen rekening mee gehouden is, is dat een fiets niet dubbel verhuurd kan worden */


DECLARE @HOnrF INT = 1; -- Teller voor HuurovereenkomstNummer gekoppeld aan fietsen
DECLARE @FtsnTllr INT = 1; -- Teller voor aantal fietsen aan huurovereenkomst
DECLARE @FtsnHO INT = 0; -- Aantal fietsen in huurovereenkomst (tussen de 0 en 4 fietsen in 1 huurovereenkomst = aanname).
DECLARE @PlsNr INT = 1000; -- Polisnummer start vanaf 1000 
DECLARE @StatOmscHO VARCHAR(25) = ''; -- Statusomschrijving huurovereenkomst
DECLARE @StrtDtmV DATE = ''; -- Startdatum verzekering.
DECLARE @EndDtmV DATE = ''; -- Einddatum verzekering
DECLARE @FrmNrRnd INT = 0; -- Willekeurig framenummer
DECLARE @Barc INT = 0; -- Barcode van een accessoire

WHILE @HOnrF <= (SELECT COUNT (HuurovereenkomstNr) FROM Huurovereenkomst) -- Doorloop alle huurovereenkomsten
BEGIN
	SET @StatOmscHO = (SELECT Huurovereenkomst.[StatusOmschrijving] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @HOnrF);
	SET @StrtDtmV = (SELECT Huurovereenkomst.[Startdatum] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @HOnrF);
	SET @EndDtmV = (SELECT Huurovereenkomst.[Einddatum] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @HOnrF);

	SET @FtsnHO = FLOOR(RAND()*4)+1; -- Tussen de 1 en 4 fietsen in 1 huurovereenkomst.
	WHILE @FtsnTllr < @FtsnHO -- Doorloop lus om fietsen aan huurovereenkomst te koppelen
		BEGIN
			IF ((SELECT FLOOR(RAND()+0.5)) = 0) -- Fiets wel of niet verzekeren, 0 is niet verzekeren.
				BEGIN -- Niet verzekeren
					SET @FrmNrRnd = (FLOOR(RAND()*100)+1); -- Kies uit een van de 100 fietsen. +1 anders wordt Nr. 100 nooit geselecteerd.
					IF NOT EXISTS (SELECT * FROM VerhuurdeFiets WHERE (FrameNr = @FrmNrRnd AND HuurovereenkomstNr = @HOnrF)) -- Maar 1x dezelfde fiets in de huurovereenkomst.
						INSERT INTO VerhuurdeFiets([HuurovereenkomstNr],[FrameNr],[Polisnummer]) VALUES(@HOnrF,@FrmNrRnd,NULL);
				END;
			ELSE -- wel verzekeren
				BEGIN 
					SET @FrmNrRnd = (FLOOR(RAND()*100)+1); -- Kies uit een van de 100 fietsen. +1 anders wordt Nr. 100 nooit geselecteerd.
					IF NOT EXISTS (SELECT * FROM VerhuurdeFiets WHERE (FrameNr = @FrmNrRnd AND HuurovereenkomstNr = @HOnrF)) -- Maar 1x dezelfde fiets in de huurovereenkomst.
						BEGIN
							IF @StatOmscHO = 'Geannuleerd'
								INSERT INTO VerhuurdeFiets([HuurovereenkomstNr],[FrameNr],[Polisnummer]) VALUES(@HOnrF,@FrmNrRnd,NULL)
							ELSE
								BEGIN
									IF NOT EXISTS (SELECT * FROM Verzekering WHERE Polisnummer = @PlsNr) -- Maar 1x een polis in tabel zetten met zelfde polisnummer. En de status moet niet geannuleerd zijn.
										BEGIN
											INSERT INTO Verzekering([Polisnummer],[Startdatum],[Einddatum]) VALUES(@PlsNr, @StrtDtmV, @EndDtmV)
										END
									INSERT INTO VerhuurdeFiets([HuurovereenkomstNr],[FrameNr],[Polisnummer]) VALUES(@HOnrF, @FrmNrRnd, @PlsNr)
								END;
						END;
				END;
			SET @Barc = (FLOOR(RAND()*100)+1); -- Kies uit een van de 100 Accessoires, gemakshalve worden er net zo veel acc. verhuurd als fietsen. +1 anders wordt Nr. 100 nooit geselecteerd.
			IF NOT EXISTS (SELECT * FROM VerhuurdeAccessoire WHERE (Barcode = @Barc AND HuurovereenkomstNr = @HOnrF))
				INSERT INTO VerhuurdeAccessoire([HuurovereenkomstNr],[Barcode]) VALUES(@HOnrF,@Barc);
			
			SET @FtsnTllr = @FtsnTllr + 1
		END;
	SET @HOnrF = @HOnrF + 1;
	SET @FtsnTllr = 0;
	IF EXISTS (SELECT * FROM Verzekering WHERE Polisnummer = (@PlsNr)) SET @PlsNr = @PlsNr + 1;
END;

/* Genereer Schades */
/* Doorloop verhuurde fietsen vanuit de tabel huurovereenkomsten en verhuurde fietsen */
/* 20% heeft schade. Daarbij wordt een willekeurige schade uit de tabel werkzaamheden toebedeeld (aanname) */
/* De kosten worden willekeurig bepaald tussen de 25 en 250 euro. (aanname)*/
/* De startdatum van een reparatie is de einddatum van een verhuur en de gereeddatum is 0 tot 5 dagen later (aanname) */
/* Er wordt een willekeurige monteur geselecteerd die de reparatie heeft uitgevoerd. */
/* Een fiets heeft maar 1 schade per keer (aanname)*/

IF EXISTS (select * FROM sys.views where name = 'InlogMonteurs')
	DROP VIEW InlogMonteurs;
GO

CREATE VIEW InlogMonteurs AS 
SELECT inlognaam FROM MedewerkerRol WHERE Rolnaam IN ('Monteur');
GO

DECLARE @SchNr INT = 1; -- Schadenummer
DECLARE @TlrHO INT = 1; -- teller voor huurovereenkomsten
DECLARE @TlrFO INT = 1; -- teller voor aantal fietsen gekoppeld aan huurovereenkomst
DECLARE @SchdOmsc VARCHAR(250) = ''; -- Willekeurige schade
DECLARE @StrtDtmS DATE = ''; -- Startdatum van de reparatie van een schade
DECLARE @EndDtmS DATE = ''; -- Einddatum van de reparatie van een schade
DECLARE @SchadeFiets INT = 0; -- welke fiets heeft schade
DECLARE @KostenS INT = 0; -- willekeurige kosten reparatie tussen de 25 en 250 euro
DECLARE @FietsenInVerhuurO TABLE (FrmNrO INT); -- Array met FrameNr gekoppeld aan een huurovereenkomst
DECLARE @StatOmscHO VARCHAR(25) = ''; -- Statusomschrijving van een huurovereenkomst.
DECLARE @InlgNmM VARCHAR(30) = ''; -- Inlognaam van een monteur

WHILE @TlrHO <= (SELECT COUNT (HuurovereenkomstNr) FROM Huurovereenkomst)
BEGIN
	SET @StatOmscHO = (SELECT Huurovereenkomst.[StatusOmschrijving] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @TlrHO);
	SET @StrtDtmS = (SELECT Huurovereenkomst.[Startdatum] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @TlrHO);
	SET @EndDtmS = (SELECT Huurovereenkomst.[Einddatum] FROM Huurovereenkomst WHERE HuurovereenkomstNr = @TlrHO);
	SET @InlgNmM = (SELECT TOP 1 Inlognaam FROM InlogMonteurs ORDER BY NEWID()); -- Een willekeurige verkoper (rol:directie of verkoper)

	IF (@StatOmscHO <> 'Geannuleerd') AND (DATEDIFF(DAY, GETDATE(), @EndDtmS) <= 0 ) -- Zolang de status van een huurovereenkomst niet 'geannuleerd' is en de einddatum niet in de toekomst ligt.
	BEGIN
		INSERT INTO @FietsenInVerhuurO (FrmNrO) SELECT FrameNr FROM VerhuurdeFiets WHERE HuurovereenkomstNr = @TlrHO;
		WHILE @TlrFO < (SELECT COUNT (FrmNrO) FROM @FietsenInVerhuurO)
		BEGIN
			IF (SELECT (FLOOR(RAND()*10)+1)) <= 2 -- 20% fietsen hebben schade)
			BEGIN
				SET @SchadeFiets = (SELECT TOP 1 FrmNrO FROM @FietsenInVerhuurO);
				SET @SchdOmsc = (SELECT TOP 1 Werk FROM Werkzaamheden ORDER BY NEWID()); -- Een willekeurig soort werk uit tabel selecteren
				SET @EndDtmS = DATEADD(DAY, ROUND((RAND()*5),0), @StrtDtmS); -- Reparatietijd tussen de 0 en 5 dagen. 
				SET @KostenS = ROUND(RAND()*225,0)+25; -- Kosten tussen 25 en 250 euro
				INSERT INTO Schade([SchadeNr],[Werkzaamheden],[Startdatum],[Gereeddatum],[KostenReparatie],[Betaaldatum],[Inlognaam],[FrameNr], [HuurovereenkomstNr]) 
				VALUES(@SchNr,@SchdOmsc,@StrtDtmS,@EndDtmS,@KostenS,@StrtDtmS,@InlgNmM,@SchadeFiets,@TlrHO);
				DELETE FROM @FietsenInVerhuurO WHERE FrmNrO = @SchadeFiets;
				SET @SchNr = @SchNr + 1;
			END
			SET @TlrFO = @TlrFO + 1;
		END	
	END
	SET @TlrHO = @TlrHO + 1;
END

