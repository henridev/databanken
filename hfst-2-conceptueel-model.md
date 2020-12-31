# hoofdstuk 2 conceptueel model

**leerdoel** :

- een **conceptueel model** kunnen opstellen
- relevante **entiteitstypes**, **attribuuttypes** en **relatietypes** uit een tekst halen en in een conceptueel model opnemen
- ken notatie **diagrammen** en leer die toepassen

De student is zich bewust van de noodzaak om eerst een conceptueel model te maken. De student kan de . De student kent de notatie van het diagram en kan het toepassen.

**leerinhoud :**

I. inleiding:

- Wat is een conceptueel model
- Stappen in het bouwen van een database

II. Entity Relationship Model

- Bouwstenen
- Diagram (ERD)
- Relatie-attributen

**leermateriaal :**

- Boek: Part I –H3.
- Theorie slides H2
- Oefenslides H2

## Fases in Databank Ontwerp

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609344036/db-h2-Page-2_wexlzv.png"/>



## ERD (voorstelling conceptueel datamodel)

> **conceptueel datamodel** = in schema brengen
>
> - objecten;
> - kenmerken van objecten;
> - relaties tussen objecten;
> - integriteitsregels

### bouwstenen

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609345294/db-h2-Page-4_dy4i1u.png"/>



### attribuuttypes

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609345292/db-h2-Page-3_nb0eav.png" />



> notatie kandidaatssleutel
>
> Alle enkelvoudige kandidaatssleutels (bestaat uit 1 attribuuttypes) worden onderlijnd. Indien een kandidaatssleutel uit meerdere attribuuttypes bestaat (samengestelde kandidaatssleutel), duiden we dit dan aan met de ’u’- constraint.
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609395911/db-h2-Page-6_th7alu.png"/>



> Uniciteit
> 
>
> Voorbeeld: Stel er bestaan geen twee artiesten met eenzelfde combinatie van voornaam en familienaam => voornaam en familienaam zijn kandidaatssleutelattributen en vormen (samen) de kandidaatssleutel. De combinatie van voornaam, familienaam en geboortedatum is geen kandidaatssleutel want de combinatie van voornaam en familienaam op zich is al uniek => voornaam, familienaam én geboortedatum zijn **niet irreducibel**, m.a.w. geboortedatum is **overbodig om uniciteit af te dwingen**.

### Relatietypes

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609396069/db-h2-Page-5_wo0xnq.png"/>

### cardinaliteit

- ***Maximum-cardinaliteit*** = het maximum aantal entiteiten van het entiteitstype dat op een gegeven tijdstip kan deelnemen aan een relatie van het relatietype. Mogelijke waarden zijn 1 of N.
- 1: één entiteit kan in relatie staan met maximum 1 (andere) entiteit via dit relatietype
  - N: één entiteit kan in relatie staan met N (andere) entiteiten via dit relatietype. N is een willekeurig geheel getal groter dan 1.
  
- ***Minimum-cardinaliteit*** = het minimum aantal entiteiten van het entiteitstype dat op elk tijdstip moet voorkomen in een relatie van het relatietype. Mogelijke waarden zijn 0 of 1.
- 0: sommige entiteiten nemen niet deel aan de relatie. De relatie is optioneel voor dat entiteitstype.
  - 1: een entiteit moet altijd in relatie staan met minimum één andere entiteit

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609398245/db-h2-Page-7_pnir44.png"/>







voorbeeld oefening 

> Je wil een activiteitendatabank creëren 
>
> • Elke activiteit krijgt een uniek volgnummer, een datum, een naam, een startuur, vermoedelijk einduur, een korte omschrijving en een kostprijs om deel te nemen. De combinatie van datum en naam is ook uniek. 
>
> • Elke activiteit start en eindigt op een bepaalde locatie. Een locatie heeft een unieke naam en een adres. 
>
> • Geef de cardinaliteit
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609398614/db-h2-Page-8_zwwv2p.png"/>



> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609400155/db-h2-Page-9_tyyqdm.png" style="zoom:2"/>