/*==============================================================*/
/* Database name:  muziekdatabase                               */
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     4/7/2016 9:21:22 AM                         */
/*==============================================================*/


/*==============================================================*/
/* Database: muziekdatabase, in deze uitwerking alleen          */
/* het toevoegen van de nieuwe tabellen eenmalig, geen          */
/* herhaalbaar script dat de hele muziekdatabase opnieuw maakt  */
/*==============================================================*/

use muziekdatabase
go


/*==============================================================*/
/* Table: Student                                       */
/*==============================================================*/
create table Student (
   studentid            numeric(5)           not null,
   naam				    varchar(30)          not null,
   CONSTRAINT PK_STUDENT primary key (studentid)
)
go

/*==============================================================*/
/* Table: StudentBespeeltInstrument                                           */
/*==============================================================*/
create table StudentBespeeltInstrument (
   instrumentnaam       varchar(14)          not null,
   toonhoogte           varchar(7)           not null,
   studentid			numeric(5)			 not null,
   niveaucode           char(1)              not null,				
   constraint PK_STUDENTBESPEELTINSTRUMENT primary key  (instrumentnaam, toonhoogte, studentid)
)
go
/*==============================================================*/
/* Aanmaken foreign key constraints                             */
/*==============================================================*/

alter table StudentBespeeltInstrument
   add constraint FK_STUDSPEELT_REF_NIVEAU foreign key (niveaucode)
      references Niveau (niveaucode)
--      on update cascade

alter table StudentBespeeltInstrument
   add constraint FK_STUDSPEELT_REF_INSTR foreign key (instrumentnaam, toonhoogte)
      references Instrument (instrumentnaam, toonhoogte)
--      on update cascade

alter table StudentBespeeltInstrument
   add constraint FK_STUDSPEELT_REF_STUD foreign key (studentid)
      references Student (studentid)
--      on update cascade
go

/*==============================================================*/
/* DML: insert van voorbeeldpopulatie uit de excel              */
/*==============================================================*/

DELETE FROM Student
DELETE FROM StudentBespeeltInstrument

INSERT INTO Student VALUES (2, 'Candy Dulfer')
INSERT INTO Student VALUES (7, 'John Coltrane')
INSERT INTO Student VALUES (10, 'Hans Dulfer')
INSERT INTO Student VALUES (15, 'Sonny Rollins')

INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Alt', 2, 'C')
INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Alt', 7, 'C')
INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Tenor', 2, 'C')
INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Tenor', 7, 'B')
INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Tenor', 10, 'C')
INSERT INTO StudentBespeeltInstrument VALUES ('Saxofoon', 'Tenor', 15, 'A')

