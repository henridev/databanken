# hoofdstuk-4: Conceptueel model: Enhanced Entity Relationship Model

**leerdoel:** 

- een conceptueel model te maken, inclusief specialisaties.
- mogelijke risico’s wanneer het (E)ERD niet correct is opgesteld

**leerinhoud:**

Enhanced Entity Relationship Model 

- Specialisatie / generalisatie
- aggregatie / compositie
- Mogelijke gevaren



## inleiding 

uitbreiding op gewoon ERD met zelfde concepten maar toevoeging van Aggragetie / Compositie & specialisatie / generalisatie.

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609413677/db-h5-Page-2_intalj.png"/>

## specialisatie

> wanneer we zien dat een entiteitstype gemeenschappelijke maar ook specifieke kenmerken heeft. Dan doen we aan specialisatie wat wil zeggen dat we een **supertype** en **subtype** maken.

**subtype** = ⊆ van entiteiten van een entiteitstype die zich op een bijzondere wijze onderscheidt en waarvan het zinvol is om ze te onderscheiden omdat gebruikers in de betekenis van zo een groep geı̈nteresseerd zijn.

- heeft nooit **kandidaatssleutelattribuut**
- erft relaties en attributen supertype

**supertype** = bevat de algemene kenmerken, de subtypes de specifieke. De subtypes erven de eigenschappen van het supertype.

<u>***specialisatie is te interpreteren als  subtype `IS EEN` supertype  terwijl een gewone relatie te interpreteren is als X `HEEFT` Y***</u>

<=> **generalisatie**  = het creëren van een algemeen supertype dat de gemeenschappelijke attribuuttypes en relatietypes van een aantal gegeven entiteitstypes verenigt.

## constraints

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609413687/db-h5-Page-1_rqaznq.png"/>

## Aggregatie

Entiteittypes die met elkaar in verband staan via een specifiek relatietype, kunnen geaggregeerd worden in een 'hoger-niveau' geaggregeerd entiteittype.

<u>***aggregatie is te interpreteren als  X `BESTAAT UIT` Y  Z ... terwijl een gewone relatie te interpreteren is als X `HEEFT` Y***</u>



> voorbeeld
>
> Een Patiënt (uniek rijksregisternummer en naam) gaat naar een Dokter (uniek rizivnummer en naam) op een specifiek tijdstip (datum + tijd) en krijgt een Geneesmiddel (unieke naam, prijs) voorgeschreven.
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609414828/db-h5-Page-3_kvehnv.png"/>



## Mogelijke gevaren => Connection traps

**Connection trap** = wanneer gegevens in een database niet gevonden kunnen worden omwille van verkeerde of ontbrekende relaties



<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609422196/db-h5-Page-4_zbyfb9.png" />  

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609422178/db-h5-Page-5_t4nm8b.png"/>



## ERD gevaren

- Tijdelijke beperkingen (dit zijn beperkingen die gelden in een bepaald tijdsinterval) kunnen niet worden gemodelleerd => Deze beperkingen moeten worden gedocumenteerd en kunnen later worden geïmplementeerd (bijvoorbeeld door databanktriggers -zie Databanken 2)
- Het ERD kan geen consistentie garanderen tussen verschillende relatietypes => Deze beperkingen moeten worden gedocumenteerd en kunnen later worden geïmplementeerd (bijvoorbeeld door databanktriggers -zie Databanken 2) (vb: een werknemer kan enkel werken aan projecten die toegewezen zijn aan het departement waar hij werkt)
- In het ERD is het domein waartoe attributen behoren, niet bekend. Men kan niet de mogelijke verzameling van waarden voor een attribuut vastleggen. => Deze beperkingen moeten worden gedocumenteerd en kunnen later worden geïmplementeerd (bijvoorbeeld door databankconstraints-zie Databanken 2)
- in het ERD is het niet mogelijk de definitie van functies op te nemen

