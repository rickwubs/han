
/*A. De omzet van de maand januari in het de jaar 2012.*/
IF OBJECT_ID (N'dbo.GetOmzetPerMaandAccessoires', N'FN') IS NOT NULL  
    DROP FUNCTION GetOmzetPerMaandAccessoires;  
GO 

CREATE Function GetOmzetPerMaandAccessoires (@Year int, @Month int)
RETURNS DECIMAL(19,4)
AS
BEGIN
declare @bedrag DECIMAL(19,4);
SELECT @bedrag = SUM(t.totaal_accessoire)
from (SELECT totaal_accessoire = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * a.Dagprijs)
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
  inner join dbo.Accessoire a on va.Barcode = a.Barcode
  where StatusOmschrijving = 'Betaald'
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, a.Dagprijs) t
  RETURN @bedrag;
END;

IF OBJECT_ID (N'dbo.GetOmzetPerMaandFietsen', N'FN') IS NOT NULL  
    DROP FUNCTION GetOmzetPerMaandFietsen;  
GO 

CREATE Function GetOmzetPerMaandFietsen (@Year int, @Month int)
RETURNS DECIMAL(19,4)
AS
BEGIN
declare @bedrag DECIMAL(19,4);
SELECT @bedrag = SUM(t.totaal_fiets)
from (SELECT totaal_fiets = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * f.Dagprijs)
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
  inner join dbo.Fiets f on vf.FrameNr = f.FrameNr
  where StatusOmschrijving = 'Betaald'
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, f.Dagprijs) t
  RETURN @bedrag;
END;

drop view if exists OmzetJanuari;

create view OmzetJanuari as
select omzet = SUM(dbo.GetOmzetPerMaandFietsen(2012, 01) + dbo.GetOmzetPerMaandAccessoires(2012, 01));

/*B. De meest gehuurde fiets (Top 100).*/
drop view if exists Top100VerhuurdeFietsen;

create view Top100VerhuurdeFietsen as
SELECT TOP (100)
 f.FrameNr, f.MerkNaam, f.[Type], a.aantal
  FROM (Select COUNT(*) as aantal, FrameNr
  From VerhuurdeFiets
  group by FrameNr) a
  left join Fiets f on a.FrameNr = f.FrameNr
  group by f.FrameNr, f.MerkNaam, f.[Type], a.aantal
  order by a.aantal desc;

/*C. Het meest gehuurde accessoire (Top 100).*/
drop view if EXISTS Top100VerhuurdeAccessoires;

create view Top100VerhuurdeAccessoires as
SELECT TOP (100)
  a.Barcode, a.MerkNaam, a.[Type], t.aantal
  FROM (Select COUNT(*) as aantal, Barcode
  From VerhuurdeAccessoire
  group by Barcode) t
  left join Accessoire a on t.Barcode = a.Barcode
  group by a.Barcode, a.MerkNaam, a.[Type], t.aantal
  order by t.aantal desc;

/*D. De huurovereenkomst met de hoogste omzet.*/

drop view if exists OmzetPerOvereenkomstFietsen;

create view OmzetPerOvereenkomstFietsen
as 
select SUM(t.totaal_fiets) as totaal, t.HuurovereenkomstNr
from (SELECT totaal_fiets = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * f.Dagprijs), h.HuurovereenkomstNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
  inner join dbo.Fiets f on vf.FrameNr = f.FrameNr
  where StatusOmschrijving = 'Betaald' 
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, f.Dagprijs) t

  group by HuurovereenkomstNr;
  
  drop view if exists OmzetPerOvereenkomstAccessoires;

create view OmzetPerOvereenkomstAccessoires
as 
select SUM(t.totaal_accessoires) as totaal, t.HuurovereenkomstNr
from (SELECT SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * a.Dagprijs) as totaal_accessoires, h.HuurovereenkomstNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
  inner join dbo.Accessoire a on va.Barcode = a.Barcode
  where StatusOmschrijving = 'Betaald' 
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, a.Dagprijs) t

  group by HuurovereenkomstNr;

  drop view if exists OmzetPerOvereenkomst;

  create view OmzetPerOvereenkomst
  as
select a.HuurovereenkomstNr, SUM(a.totaal + f.totaal) as totaal 
from OmzetPerOvereenkomstAccessoires a 
inner join OmzetPerOvereenkomstFietsen f on a.HuurovereenkomstNr = f.HuurovereenkomstNr
group by a.HuurovereenkomstNr;
  
/*E. De schade in het jaar 2016*/
create view Schade2016
  as
SELECT SUM(KostenReparatie) as totaal
From Schade
where YEAR(BetaalDatum) = 20;
/*F. De fiets met de meeste schade*/

drop view if EXISTS MeestBeschadigdeFiets;

create view MeestBeschadigdeFiets as
SELECT TOP(1)
 f.FrameNr, f.MerkNaam, f.[Type], a.aantal
  FROM (Select COUNT(*) as aantal, FrameNr
  From Schade
  group by FrameNr) a
  left join Fiets f on a.FrameNr = f.FrameNr
  group by f.FrameNr, f.MerkNaam, f.[Type], a.aantal
  order by a.aantal desc

/*G. De klant met de hoogste omzet van 2017*/

drop view if exists OmzetPerOvereenkomstFietsen;

create view OmzetPerOvereenkomstFietsen
as 
select SUM(t.totaal_fiets) as totaal, t.HuurovereenkomstNr
from (SELECT totaal_fiets = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * f.Dagprijs), h.HuurovereenkomstNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
  inner join dbo.Fiets f on vf.FrameNr = f.FrameNr
  where StatusOmschrijving = 'Betaald'
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, f.Dagprijs) t

  group by HuurovereenkomstNr

  drop view if exists OmzetPerOvereenkomstAccessoires;

create view OmzetPerOvereenkomstAccessoires
as 
select SUM(t.totaal_accessoires) as totaal, t.HuurovereenkomstNr
from (SELECT SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * a.Dagprijs) as totaal_accessoires, h.HuurovereenkomstNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
  inner join dbo.Accessoire a on va.Barcode = a.Barcode
  where StatusOmschrijving = 'Betaald'
  group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, a.Dagprijs) t

  group by HuurovereenkomstNr

drop view if exists KlantHoogsteOmzet;

create view KlantHoogsteOmzet
as
select a.KlantNr, SUM(a.totaal + f.totaal) as totaal 
from OmzetPerKlantAccessoires a 
inner join OmzetPerKlantFietsen f on a.KlantNr = f.KlantNr
group by a.KlantNr
order by totaal desc;