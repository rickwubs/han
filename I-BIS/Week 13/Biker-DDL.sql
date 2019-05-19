/*==============================================================*/
/* Database name:  BIKER                                        */
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     10/21/2018 11:22:09 AM                       */
/* Last update on: 12/04/2018 12:22:09 AM                       */
/*==============================================================*/


use master
go

IF EXISTS(SELECT * FROM sysdatabases WHERE name = 'BIKERENT')
	DROP DATABASE BIKERENT
go

IF EXISTS(SELECT * FROM sysdatabases WHERE name = 'BIKER')
	DROP DATABASE BIKER
go

/*==============================================================*/
/* Database: BIKER                                              */
/*==============================================================*/
create database BIKER
go


use BIKER
go


CREATE TABLE AccessoireSoort (
 Soort VARCHAR(30) NOT NULL
);

ALTER TABLE AccessoireSoort ADD CONSTRAINT PK_AccessoireSoort PRIMARY KEY (Soort);


CREATE TABLE Merk (
 MerkNaam VARCHAR(30) NOT NULL
);

ALTER TABLE Merk ADD CONSTRAINT PK_Merk PRIMARY KEY (MerkNaam);


CREATE TABLE Accessoire (
 Barcode INT NOT NULL,
 Soort VARCHAR(30),
 MerkNaam VARCHAR(30),
 Type VARCHAR(20) NULL,
 Dagprijs INT,
 Nieuwwaarde INT NOT NULL
);

ALTER TABLE Accessoire ADD CONSTRAINT PK_Accessoire PRIMARY KEY (Barcode);

CREATE TABLE Fiets (
 FrameNr INT NOT NULL, 
 MerkNaam VARCHAR(30),
 Type VARCHAR(20) NOT NULL,
 DamesOfHeren VARCHAR(1) NOT NULL,
 Elektrisch BIT NOT NULL,
 Dagprijs INT,
 Nieuwwaarde INT NOT NULL
);

ALTER TABLE Fiets ADD CONSTRAINT PK_Fiets PRIMARY KEY (FrameNr);


CREATE TABLE Verzekering (
 Polisnummer INT NOT NULL,
 Startdatum DATE NOT NULL,
 Einddatum DATE NOT NULL
);

ALTER TABLE Verzekering ADD CONSTRAINT PK_Verzekering PRIMARY KEY (Polisnummer);

	
CREATE TABLE Medewerker (
 Inlognaam VARCHAR(30) NOT NULL,
 Wachtwoord VARCHAR(20) NOT NULL,
 Geboortedatum DATE NOT NULL,
 MedewerkerVoornaam VARCHAR(20) NOT NULL,
 MedewerkerAchternaam VARCHAR(30) NOT NULL
);

ALTER TABLE Medewerker ADD CONSTRAINT PK_Medewerker PRIMARY KEY (Inlognaam);


CREATE TABLE Rol (
 Rolnaam VARCHAR(20) NOT NULL,
);

ALTER TABLE Rol ADD CONSTRAINT PK_Rol PRIMARY KEY (RolNaam);


CREATE TABLE MedewerkerRol (
 Rolnaam VARCHAR(20) NOT NULL,
 Inlognaam VARCHAR(30) NOT NULL
);

ALTER TABLE MedewerkerRol ADD CONSTRAINT PK_MedewerkerRol PRIMARY KEY (RolNaam,InlogNaam);


CREATE TABLE Schade (
 SchadeNr INT NOT NULL,
 Werkzaamheden VARCHAR(250) NOT NULL,
 StartDatum DATE NOT NULL,
 GereedDatum DATE,
 KostenReparatie INT,
 BetaalDatum DATE,
 Inlognaam VARCHAR(30),
 FrameNr INT NOT NULL,
 HuurovereenkomstNr INT NOT NULL 
);

ALTER TABLE Schade ADD CONSTRAINT PK_Schade PRIMARY KEY (SchadeNr);


CREATE TABLE Klant (
 KlantNr INT NOT NULL,
 KlantVoornaam VARCHAR(30) NOT NULL,
 KlantAchternaam VARCHAR(50) NOT NULL,
 Adres VARCHAR(50) NOT NULL,
 Postcode VARCHAR(7) NOT NULL,
 Plaats VARCHAR(50) NOT NULL,
 EmailAdres VARCHAR(50) NOT NULL,
 Geboortedatum DATE,
 Geslacht VARCHAR(1) 
);

ALTER TABLE Klant ADD CONSTRAINT PK_Klant PRIMARY KEY (KlantNr);


CREATE TABLE TelefoonNummer (
 KlantNr INT NOT NULL,
 TelefoonNr VARCHAR(12) NOT NULL,
);

ALTER TABLE TelefoonNummer ADD CONSTRAINT PK_TelefoonNummer PRIMARY KEY (KlantNr, TelefoonNr);


CREATE TABLE HuurovereenkomstStatus ( 
 StatusOmschrijving VARCHAR(25) NOT NULL
);

ALTER TABLE HuurovereenkomstStatus ADD CONSTRAINT PK_HuurovereenkomstStatus PRIMARY KEY (StatusOmschrijving);


CREATE TABLE Huurovereenkomst (
 HuurovereenkomstNr INT NOT NULL,
 Startdatum DATE NOT NULL,
 Einddatum DATE NOT NULL,  
 Betaaldatum DATE,
 StatusOmschrijving VARCHAR(25) NOT NULL,
 KlantNr INT NOT NULL,
 Inlognaam VARCHAR(30)
);

ALTER TABLE Huurovereenkomst ADD CONSTRAINT PK_Huurovereenkomst PRIMARY KEY (HuurovereenkomstNr);


CREATE TABLE VerhuurdeAccessoire (
 HuurovereenkomstNr INT NOT NULL,
 Barcode INT NOT NULL
);

ALTER TABLE VerhuurdeAccessoire ADD CONSTRAINT PK_VerhuurdeAccessoire PRIMARY KEY (HuurovereenkomstNr,Barcode);


CREATE TABLE VerhuurdeFiets (
 HuurovereenkomstNr INT NOT NULL,
 FrameNr INT NOT NULL,
 Polisnummer INT
);

ALTER TABLE VerhuurdeFiets ADD CONSTRAINT PK_VerhuurdeFiets PRIMARY KEY (HuurovereenkomstNr, FrameNr);


CREATE TABLE Werkzaamheden (
 Werk VARCHAR(250) NOT NULL
);
ALTER TABLE Werkzaamheden ADD CONSTRAINT PK_Werkzaamheden PRIMARY KEY (Werk);


/* FOREIGN KEYS */
ALTER TABLE Accessoire ADD CONSTRAINT FK_Accessoire_0 FOREIGN KEY (Soort) REFERENCES AccessoireSoort (Soort);
ALTER TABLE Accessoire ADD CONSTRAINT FK_Accessoire_1 FOREIGN KEY (MerkNaam) REFERENCES Merk (MerkNaam);

ALTER TABLE Fiets ADD CONSTRAINT FK_Fiets_0 FOREIGN KEY (MerkNaam) REFERENCES Merk (MerkNaam);

ALTER TABLE Schade ADD CONSTRAINT FK_Schade_0 FOREIGN KEY (Inlognaam) REFERENCES Medewerker (Inlognaam);
ALTER TABLE Schade ADD CONSTRAINT FK_Schade_1 FOREIGN KEY (FrameNr) REFERENCES Fiets (FrameNr);
ALTER TABLE Schade ADD CONSTRAINT FK_Schade_2 FOREIGN KEY (Werkzaamheden) REFERENCES Werkzaamheden (Werk);

ALTER TABLE MedewerkerRol ADD CONSTRAINT FK_MedewerkerRol_0 FOREIGN KEY (Rolnaam) REFERENCES Rol (Rolnaam);
ALTER TABLE MedewerkerRol ADD CONSTRAINT FK_MedewerkerRol_1 FOREIGN KEY (Inlognaam) REFERENCES Medewerker (Inlognaam);

ALTER TABLE TelefoonNummer ADD CONSTRAINT FK_Telefoonnr_0 FOREIGN KEY (KlantNr) REFERENCES Klant (KlantNr);

ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_0 FOREIGN KEY (KlantNr) REFERENCES Klant (KlantNr);
ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_1 FOREIGN KEY (Inlognaam) REFERENCES Medewerker (Inlognaam);
ALTER TABLE Huurovereenkomst ADD CONSTRAINT FK_Huurovereenkomst_2 FOREIGN KEY (StatusOmschrijving) REFERENCES HuurovereenkomstStatus (StatusOmschrijving);

ALTER TABLE VerhuurdeAccessoire ADD CONSTRAINT FK_VerhuurdeAccessoire_0 FOREIGN KEY (HuurovereenkomstNr) REFERENCES Huurovereenkomst (HuurovereenkomstNr);
ALTER TABLE VerhuurdeAccessoire ADD CONSTRAINT FK_VerhuurdeAccessoire_1 FOREIGN KEY (Barcode) REFERENCES Accessoire (Barcode);

ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_0 FOREIGN KEY (HuurovereenkomstNr) REFERENCES Huurovereenkomst (HuurovereenkomstNr);
ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_1 FOREIGN KEY (FrameNr) REFERENCES Fiets (FrameNr);
ALTER TABLE VerhuurdeFiets ADD CONSTRAINT FK_VerhuurdeFiets_2 FOREIGN KEY (Polisnummer) REFERENCES Verzekering (Polisnummer);

