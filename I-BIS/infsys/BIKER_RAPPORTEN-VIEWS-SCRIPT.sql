-- Opdracht 9
-- A
create view MomenteelVerhuurdeFietsen as
select distinct f.FrameNr, f.MerkNaam, f.[Type]
from VerhuurdeFiets v
inner join Fiets f on v.FrameNr = f.FrameNr
inner join Huurovereenkomst h on v.HuurovereenkomstNr = h.HuurovereenkomstNr
where GetDate() between h.Startdatum and h.Einddatum

-- B
create view MomenteelVerhuurdeAccessoires as
select distinct a.Barcode, a.Soort, a.MerkNaam, a.[Type]
from VerhuurdeAccessoire v
inner join Accessoire a on v.Barcode = a.Barcode
inner join Huurovereenkomst h on v.HuurovereenkomstNr = h.HuurovereenkomstNr
where GetDate() between h.Startdatum and h.Einddatum

-- C
create view NietVerhuurdeFietsen2018 as
select *
from Fiets
where FrameNr not in (
	select FrameNr
	from VerhuurdeFiets v
	inner join Huurovereenkomst h on v.HuurovereenkomstNr = h.HuurovereenkomstNr
	where year(h.Startdatum) = 2018
	or year(h.Einddatum) = 2018
)

-- D
create view NietVerhuurdeAccessoiresLaatste2Jaar as
select *
from Accessoire
where Barcode not in (
	select Barcode
	from VerhuurdeAccessoire v
	inner join Huurovereenkomst h on v.HuurovereenkomstNr = h.HuurovereenkomstNr
	where year(h.Startdatum) IN (year(DateAdd(yy, -1, GetDate())), year(DateAdd(yy, -2, GetDate())))
	or year(h.Einddatum) IN (year(DateAdd(yy, -1, GetDate())), year(DateAdd(yy, -2, GetDate())))
)

-- E
CREATE view [dbo].[OmzetPerOvereenkomstFietsen]
as
select SUM(t.totaal_fiets) as totaal, t.HuurovereenkomstNr
from (SELECT totaal_fiets = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * f.Dagprijs), h.HuurovereenkomstNr
 FROM [BIKER].[dbo].[Huurovereenkomst] h
 inner join dbo.VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
 inner join dbo.Fiets f on vf.FrameNr = f.FrameNr
 where StatusOmschrijving = 'Betaald'
 group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, f.Dagprijs) t

 group by HuurovereenkomstNr


GO

CREATE view [dbo].[OmzetPerOvereenkomstAccessoires]
as
select SUM(t.totaal_accessoires) as totaal, t.HuurovereenkomstNr
from (SELECT SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * a.Dagprijs) as totaal_accessoires, h.HuurovereenkomstNr
 FROM [BIKER].[dbo].[Huurovereenkomst] h
 right outer join dbo.VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
 right outer join dbo.Accessoire a on va.Barcode = a.Barcode
 where StatusOmschrijving = 'Betaald'
 group by h.HuurovereenkomstNr, h.Startdatum, h.Einddatum, a.Dagprijs) t

 group by HuurovereenkomstNr


GO

IF OBJECT_ID (N'dbo.GetOmzetPerOvereenkomst', N'FN') IS NOT NULL
   DROP FUNCTION GetOmzetPerOvereenkomst;
GO


CREATE Function GetOmzetPerOvereenkomst (@HuurovereenkomstNr int)
RETURNS DECIMAL(19,4)
AS
BEGIN
declare @bedrag DECIMAL(19,4);
select @bedrag = SUM(a.totaal + f.totaal)
from OmzetPerOvereenkomstAccessoires a
inner join OmzetPerOvereenkomstFietsen f on a.HuurovereenkomstNr = f.HuurovereenkomstNr
where a.HuurovereenkomstNr = @HuurovereenkomstNr
group by a.HuurovereenkomstNr
 RETURN @bedrag;
END;

create view Omzet2010Tot2018
as
select CONCAT('€', ROUND(CAST(SUM(t.totaal) as decimal(10,2)), -2)) as Omzet, t.maand as Maand, t.jaar as Jaar from (select SUM(dbo.getOmzetPerOvereenkomst(HuurovereenkomstNr)) as totaal, MONTH(Betaaldatum) as maand, YEAR(Betaaldatum) as jaar
from Huurovereenkomst
where Betaaldatum is not null
group by MONTH(Betaaldatum), YEAR(Betaaldatum), HuurovereenkomstNr
having YEAR(Betaaldatum) between 2010 and 2018
) t
group by t.maand, t.jaar

-- F
create view Top10PopulairsteFietsen as
select top(10) f.FrameNr, f.MerkNaam, f.[Type], a.aantal
FROM (Select COUNT(*) as aantal, FrameNr
From VerhuurdeFiets
group by FrameNr) a
left join Fiets f on a.FrameNr = f.FrameNr
group by f.FrameNr, f.MerkNaam, f.[Type], a.aantal
order by a.aantal desc

-- G
drop view if exists OmzetPerKlantAccessoiresTop100;

create view OmzetPerKlantAccessoiresTop100
as 
select SUM(t.totaal_accessoires) as totaal, t.KlantNr
from (SELECT SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * a.Dagprijs) as totaal_accessoires, h.KlantNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeAccessoire va on h.HuurovereenkomstNr = va.HuurovereenkomstNr
  inner join dbo.Accessoire a on va.Barcode = a.Barcode
  where StatusOmschrijving = 'Betaald' and h.Betaaldatum >= DATEADD(yy, -1, GETDATE()) 
  group by h.KlantNr, h.Startdatum, h.Einddatum, a.Dagprijs) t

  group by KlantNr

  drop view if exists OmzetPerKlantFietsenTop100;

create view OmzetPerKlantFietsenTop100
as 
select SUM(t.totaal_fiets) as totaal, t.KlantNr
from (SELECT totaal_fiets = SUM(DATEDIFF(DAY, h.Startdatum, h.Einddatum) * f.Dagprijs), h.KlantNr
  FROM [BIKER].[dbo].[Huurovereenkomst] h
  inner join dbo.VerhuurdeFiets vf on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
  inner join dbo.Fiets f on vf.FrameNr = f.FrameNr
  where StatusOmschrijving = 'Betaald' and h.Betaaldatum >= DATEADD(yy, -1, GETDATE()) 
  group by h.KlantNr, h.Startdatum, h.Einddatum, f.Dagprijs) t

  group by KlantNr

  create view Top100KlantenLastYear
as
select a.KlantNr, SUM(a.totaal + f.totaal) as totaal 
from OmzetPerKlantAccessoiresTop100 a 
inner join OmzetPerKlantFietsenTop100 f on a.KlantNr = f.KlantNr
group by a.KlantNr
order by totaal desc

-- H
create view Top10SchadeKlanten
as
select v.KlantNr, 
v.verhuurd as verhuurd, 
s.schade as schade, 
(convert(decimal, s.schade) / v.verhuurd) * 100 as PercentageSchade
from 
(
select top 10 k.KlantNr, count(*) as schade from Klant k
inner join Huurovereenkomst h
on k.KlantNr = h.KlantNr
inner join Schade s
on h.HuurovereenkomstNr = s.HuurovereenkomstNr
group by k.KlantNr
order by schade desc
) s
inner join
(
select k.klantNr, count(*) as verhuurd from Klant k
inner join Huurovereenkomst h
on k.klantNr = h.KlantNr
group by k.KlantNr
) v
on s.KlantNr = v.KlantNr
order by PercentageSchade desc

-- I
create view MeesteAantalSchades as
select f.FrameNr, f.MerkNaam, f.[Type], a.Aantal, Kosten
from (
	Select COUNT(*) as Aantal, FrameNr, SUM(KostenReparatie) as Kosten
	from Schade
	group by FrameNr
) a
left join Fiets f on a.FrameNr = f.FrameNr
group by f.FrameNr, f.MerkNaam, f.[Type], a.aantal, Kosten
order by a.aantal desc, Kosten desc

-- J
create view GeannuleerdeFietsen2015Tot2018
as
select (convert(decimal, y.number) / x.number) * 100 as PercentageGeannuleerd
from
 (
select count(*) as number from Huurovereenkomst h
left join VerhuurdeFiets v
on h.HuurovereenkomstNr = v.HuurovereenkomstNr
where YEAR(h.Einddatum) BETWEEN '2015' AND '2018'
) x
join 
 (
select count(*) as number from Huurovereenkomst h
left join VerhuurdeFiets v
on h.HuurovereenkomstNr = v.HuurovereenkomstNr
where h.StatusOmschrijving = 'Geannuleerd'
and YEAR(h.Einddatum) BETWEEN '2015' AND '2018'
) y on 1=1
-- K
create view TrouweKlantenIn2017En2018 as
select k.KlantNr, k.KlantVoornaam, k.KlantAchternaam
from Klant k
inner join Huurovereenkomst h on k.KlantNr = h.KlantNr
where year(h.Betaaldatum) IN (2017, 2018)
group by k.KlantNr, k.KlantVoornaam, k.KlantAchternaam
having (count(*) > 3)

-- L
create view TotaalBetaaldeBorg2015Tot2018
as
select (v.Omzet * 0.2) as borg
from 
(select 
SUM(u.Totaal) as Omzet
from
(select 
(SUM(dagprijsFiets + dagprijsAccessoire) * Tijd)  as Totaal
from
(select 
k.KlantNr,
h.HuurovereenkomstNr,
h.Startdatum, 
h.Einddatum, 
f.dagprijs as dagprijsFiets, 
a.dagprijs as dagprijsAccessoire,
DATEDIFF(DAY, h.Startdatum, h.Einddatum) as Tijd
from Huurovereenkomst h
inner join VerhuurdeFiets vf
on h.HuurovereenkomstNr = vf.HuurovereenkomstNr
inner join VerhuurdeAccessoire va
on h.HuurovereenkomstNr = va.HuurovereenkomstNr
inner join Fiets f
on vf.FrameNr = f.FrameNr
inner join Accessoire a
on va.Barcode = a.Barcode
inner join Klant k
on k.KlantNr = h.KlantNr
where YEAR(h.Einddatum) BETWEEN 2015 AND 2018
and k.klantNr in (
SELECT * 
FROM 
(
 -- Alle klanten
 SELECT DISTINCT k.KlantNr
 From Klant k 
 WHERE k.KlantNr not in ( 
 -- Alle klanten die afgelopen jaar besteld hebben
 SELECT DISTINCT k.KlantNr
 From Klant K
 left join Huurovereenkomst h on k.KlantNr = h.KlantNr
 WHERE h.Betaaldatum >= DATEADD(year, -1, GETDATE())
 group by k.KlantNr
 having count(h.HuurovereenkomstNr) >= 3)
) klantenmetborg
)
) t
group by t.Tijd) u )v


