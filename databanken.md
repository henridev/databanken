[TOC]

# inleiding 

Beste student

Het is de bedoeling dat je dit leerpad volgt. Er wordt, naast de slides, ook een syllabus ter beschikking gesteld. Daarin vinden jullie bijkomende informatie. De **syllabus vinden jullie onder 'Documenten'.**

Het leerpad is ingedeeld in hoofdstukken. Het duurt ongeveer van 1 à 2 uur om een hoofdstuk door te nemen (oefeningen niet meegerekend). In de (theorie)slides zijn kleine vingeroefeningen ingewerkt waarvan de oplossing op de volgende slide staat. Bij de meeste hoofdstukken zijn ook oefeningenslides voorzien. Daar vind je de opgaven. Het is de bedoeling dat je deze zelfstandig maakt en indient via de module 'Opdrachten' in deze Chamilo cursus.

Voor deze oefeningen is automatische feedback voorzien. Na het uploaden van jouw oplossing krijg je toegang tot een voorbeeldoplossing. Heb je nog vragen ivm deze voorbeeldoplossing of jouw eigen oplossing, dan kan je me steeds mailen (angeline.vanachter@hogent.be).

**Hoofdstuk 1 Inleiding -Databanken gekaderd**

- Definities 
- Toepassingen 
- Gegevensmanagement 
- Geschiedenis 
- Architectuur 
- Bouwen van een database 

**Hoofdstuk 2 - Conceptueel model**

- Bouwen van een databank
- Entiteit(type)
- Attribuut(type)
- Relatie(type)

**Hoofdstuk 3 -Conceptueel model - zwak entiteittype**

- Zwak entiteittype
- Historiek
- Connection traps

**Hoofdstuk 4 -Conceptueelmodel -EERD**

- Specialisatie

**Hoofdstuk 5 - Relationeel Model**

- Definities 
- Mapping

**Hoofdstuk 6 - Normalisatie**

- Functionele afhankelijkheid
- Normalisatiestappen
- Voorbeelden 

**Hoofdstuk 7-SQL - DML –1 tabel**

- Select

**Hoofdstuk 8-SQL –DML-> 1 tabel** 

- Group By
- Join
- Union

**Hoofdstuk 9-SQL -DML–wijzigen data**

- Insert
- Update
- Delete

**Hoofdstuk 10 - SQL - DDL**

- Create
- Alter
- Drop

# Hoofdstuk 1 Inleiding -Databanken gekaderd

leerdoel: De student een inzicht geven in wat een database is en wat de componenten zijn. Verder wordt ingegaan op het ontstaan, de evolutie en de verschillende soorten databanken en de verschillen met de vroegere manieren van data-opslag.

leerinhoud: 

- Definities: 
  - Database
  - Database Management System
  - Database programma.
- Toepassingen
  - Gegevensmanagement via bestanden en database.
  - Geschiedenis 
    - 1e generatie databanken
    - 2e generatie: Relationele databanken
    - 3e generatie: nosql databanken.
- LEERMATERIAAL
  - Boek: Part I –H1en H2.
  - Slides DB I H1Databanken gekaderd
- STUDIEAANWIJZINGEN Neem de slides door, samen met het boek. Dit hoofdstuk is grotendeels achtergrondinformatie om aan te tonen hoe de manieren van data-opslag zijn geëvolueerd en wat het belang is van een goede, centrale en duurzame data-opslag.  In deze les is geen oefening opgenomen, dus normaal gezien zalje dit in minder dan 2u kunnen afronden. 

## deel 1 basisbegrippen

### databank / dbms / databankensysteem

databank = Een **gedeelde** verzameling van **logisch met elkaar verbonden** gegevens en hun **beschrijving**, ontworpen om aan de informatienoden van een organisatie te voldoen (O. Connolly).

- digitaal opgeslagen
- specifiek bedrijfsproces
- specifieke groep (gebruikers en applicaties)

dbms = een verzameling computer programma’s (softwaremodules) – Nodig om een databank

- definiëren - Data Definition Language
- creëren
- wijzigen - Data Manipulation Language
- beheren - Data Control Language
- gebruiken (gegevens invoeren en ‘lezen’) - Data Query Language

databankensysteem = dbms + databank

### gegevensbeheer gecentraliseerd vs gedecentraliseerd

Gedecentraliseerde aanpak:

- Dubbele of redundante opslag 
- Risico op inconsistente data
- Sterke koppeling tussen applicaties en data
- Concurrente toegang moeilijk te realiseren
- Applicaties voor meerdere diensten/bedrijven moeilijk te realiseren

Databank gerichteaanpak (gecentraliseerd):

- Efficiënter
- Consistente data
- Eenvoudiger te beheren
- Losse koppeling tussen applicaties en data
- DBMS biedt mogelijkheden bij het ‘lezen’ van data

text vs SQL

```
Procedure FindCustomer;
begin
	openfile Customer.txt;
Read(Customer)
While not EOF(Customer)
If Customer.name='Bart' then
display(Customer);
EndIf
Read(Customer);
EndWhile;
End;
```

```mysql
SELECT * 
FROM Customer
WHERE 
name = 'Bart'
```

### delen van een databanksysteem

- Databankmodel versus instances
- Data model
- 3-lagen architectuur
- Catalog 
- Databankgebruikers
- Databanktalen

#### Databankmodel versus instances.

- **Databankmodel** = databankschema
  - bevat beschrijving van de databankstructuur en specificaties v/d elementen, hun eigenschappen,relaties, beperkingen, ...
  - Opgesteld tijdens databankontwerp
  - Wijzigt niet snel 
  - Opgeslagen in de **catalog**
  - Bevat **datamodellen**
- Toestand van een databank 
  - Op dat ogenblik aanwezige data
  - Wijzigt voortdurend

> **model**
>
> Kunstenaar (naam, geboorteplaats, geboortedatum)
>
> Kunstwerk (naam, museum, jaar)
>
> Museum (naam, stad)
>
> **toestand**
>
> | naam | geboorteplaats | geboortedatum |
> | ---- | -------------- | ------------- |
> | lol  | Paris          | 20/10/2020    |
> | lol  | Paris          | 20/10/2020    |
> | lol  | Paris          | 20/10/2020    |
>
> ...

#### Datamodel

- Ondubbelzinnige beschrijving van de gegevens, de onderlinge relaties, de beperkingen
- Vanuit een specifiek perspectie

- **Conceptueel gegevensmodel** 
  - algemene beschrijving gegevenselementen, kenmerken en relaties
  - Gebruikt door ‘IT’ en ‘business’
  - Weergave hoe ‘debusiness’ de gegevens ziet
  - Voorstelling: (E)ERD diagram
- **Logisch gegevensmodel**
  - vertaling conceptueel gegevensmodel naar het type databankmodel
    - Relationeel, hiërarchisch, OO, XML, NoSQL
- **Fysiek gegevensmodel**
  - omzetten naar intern (fysiek) gegevensmodel 
    - Geeft informatie over fysieke opslag: 
      - waar worden welke gegevens opgeslagen
      - Onder welke vorm
      - Indexen die het ophalenversnellen
    - Zeer DBMS afhankelijk
- **Externe gegevensmodellen**
  - Deelverzameling van het logisch model
  - Voor een specifieke doelgroep
  - Ook ‘VIEWS’ genoemd.

<img src="https://i.pinimg.com/originals/86/7f/a7/867fa7370c3a0d9508db123a45b2c5b2.png"/>

#### 3 lagenmodel

- externe laag
- conceptuele logische laag
- interne laag

<img src="https://www.ecanarys.com/sites/default/files/anant.patil-50/3lyrs2.jpg"/>

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605434487/Screenshot_2020-11-15_110036_axlmkv.png"/>

#### catalog 

- Schatkist van DBMS
- Definities en beschrijving elementen in de DB (= metadata) 
- Definities logisch gegevensmodel en intern gegevensmodel
- Zorgt voor synchronisatie en consistentie van de gegevensmodellen

#### databankgebruikers

- IT Architect ontwerpt conceptueel gegevensmodel in samenspraak met de ‘business’ 
- Dbontwerper vertaalt conceptueel model naar logisch en intern model 
- DBA (databankbeheerder of database administrator) implementeert en monitort DB •
- Applicatieontwikkelaar schrijft databankprogramma’s/databankapplicaties 
- ‘Business’ gebruikt databankapplicaties en voert op die manier databankacties ui

#### taal relationele databanken 

- SQL (Structured query language) = DDL + DML (+ DCL) 
- DML (Data manipulation language): verzameling instructies om gegevens in de databank toe te voegen, te wijzigen, te verwijderen en te raadplegen zowel via interactieve editor als vanuit applicatie 
- DDL (Data Definition language): de kenmerken van de gegevens en hun relaties beschrijven

#### gegevensonafhankelijkheid

 = wijzigingen aan de gegevensbeschrijving hebben weinig tot geen impact op de applicaties 

- **Fysieke gegevensonafhankelijkheid**: wijzigingen van de opslagspecificaties hebben geen invloed op logisch model noch op de applicatie wordt opgevangen door het DBMS 
- **Logische gegevensonafhankelijkheid**: minimale aangepassingen aan de applicaties bij wijzigingen logisch model

#### **modellen**

- **Gegevensmodel**: weergave gegevens met hun kenmerken en hun relaties 
- **Conceptueel gegevensmodel**: perfecte weergave van de gegevensvereisten van de ‘business’ opgesteld met de business omgezet naar logisch en intern model 
- !!Veronderstellingen en ontbrekende informatie duidelijk vermelden!!

#### (on)gestructureerde gegevens

- Gestructureerde gegevens
  - Kunnen in logisch datamodel voorgesteld worden 
  - Integriteitsregels kunnen opgesteld en afgedwongen worden
  - vereenvoudigen opzoeken, verwerken en analyseren
  - Voorbeelden: naam, geboortejaar, geboorteplaats van een kunstenaar 
- Ongestructureerde gegevens 
  - kunnen niet op een zinvolle manier worden geïnterpreteerd door een applicatie 
  - Voorbeelden: gesprekken op social media, e-mails
  - Let op: er bestaat veel meer ongestructureerde data dan gestructureerde gegevens 

#### integriteitsregels

Integriteitsregels worden gedefinieerd op basis van het conceptueel model en opgeslagen in de catalog 

- Worden afgedwongen door het DBMS 
- Vastleggen hoe gegevens worden opgeslagen (syntactische regel) 
- Voorbeeld: Eenheidsprijs > 0; geboortedatum niet > vandaag

#### Redundante gegevens. 

- Databank = centrale en eenmalige opslag gegevens 
- Soms worden databanken gedupliceerd uit veiligheidsoverwegingen of omwille van performantie => redundantie 
- DBMS is verantwoordelijk voor de synchronisatie en garandeert de juistheid van de gegevens

## Deel 2: Architectuur databanken.

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605439287/Screenshot_2020-11-15_122049_vowqtj.png"/>

### security manager

- module voor het beheren van toegangscontrole

- heeft een gebruiker correcte rechten => **Leesrechten** | **schrijfrechten**
- gebruiker
  - gebruiker die interactief rechtstreeks acties op de DB uitvoert 
  - Applicatie die acties op de DB wil uitvoeren

### connection manager

- Module voor het beheren van de DB connectie
- zorgt ervoor dat een verbinding met de databank kan wordenopgezet (lokaal of over een netwerk)

- Controleert de login gegevens indien ok, zet een connectie op 
- De DB connectie kan een afzonderlijk proces zijn
- De DB connectie kan een onderdeel zijn van een groter proces (**thread**) 

### DDL Compiler

- Vertaalt de gegevensbeschrijvingen (DDL) naar een intern formaat 
- DDL statements worden geanalyseerd en nagekeken op syntaxfouten 
- DDL statements worden vertaald naar een intern formaat (**gecompileerd**) 
- Na foutloze compilatie worden de definities in de **catalog** opgeslagen

### query processor

Modules voor het afhandelen van queries

- helpt bij de uitvoering van ‘queries’: toevoegen, wijzigen, verwijderen en opvragen van gegevens in de databank

onderdelen : 

- DML compiler = zet DML commando’s om naar interne commando’s
  - **procedurele DML** =  geeft expliciet aan **HOE** de databank doorlopen wordt
    - **Record-at-a-time DML** = het resultaat is steeds 1 rij; een resultset wordt rij per rij aangeboden 
    - Geen query processor
  - declarative DML =  geeft aan **WAT** moet opgehaald worden of **WELKE** wijzigingen moeten aangebracht worden
    - **Set-at-a-time DML** = het resultaat is een volledige set
    - query processor
  - Relationele databank <-> OO applicaties 
    - Problemen met het op elkaar afstemmen van Object Oriented concepten en relationele concepten = **Impedance mismatch problem** 
    - Impedance mismatch solutions => Concepten op elkaar afstemmen (**ORM**) Middleware die de datastructuren van het relationeel kan afstemmen op de gebruikte programmeertaal
  - DML statements kunnen geïntegreerd zijn in applicaties van verschillende talen
  - De DML compiler zal de SQLstatements uit deze applicaties afzonderen 
  - De DML compiler zal dan in samenwerking met de andere componenten de DML statements uitvoeren 
  - Een lijst met fouten wordt gegenereerd indien van toepassing
- **Query Parser**
  - analyseert de query en zet die om in een intern formaat 
    - Voorbeeld: select * from kunstenaar order geboortejaar Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'geboortejaar' at line 2 
  - Query Parser zal nagaan of de query syntactisch en **semantisch** correct is 
    -  Voorbeeld: select naam from kunstenaar join kunstwerk Error Code: 1052. Column 'naam' in field list is ambiguous
- **Query rewriter** = optimaliseert de query: gaat op zoek naar (de meest) efficiënte manieren om de query uit te voeren op basis van de structuur van de databank en onafhankelijk van de opgeslagen data
- **Query optimizer** = optimaliseert de query op basis van de aanwezige data (gebaseerd op voorgedef indexen) 
  - zal meerdere **execution plans** opstellen en de kost ervan evalueren. Hiervoor baseert die zich op geschatte 
    - Aantal I/O acties
    - Kost verwerking door de CPU
    - Uitvoeringstijd
  - De schatting gebeurt op basis van de informatie in de catalog en statistische informatie
  - Query Optimizer is een zeer belangrijk concurrentieel/competitief aspect van een DBMS 
- **Query executor** = zorgt voor de eigenlijke uitvoering van de doorgestuurde SQLstatements door beroep te doen op de storage manager. De storage manager haalt uiteindelijk de gegevens op
  - Query optimizer stelt het finale execution plan op

###  storage manager

- Modules voor het beheren van de fysieke data-opslag

- houdt toezicht op de correcte en efficiënte gegevensopslag

onderdelen : 

- **Transaction manager** = houdt toezicht op de uitvoering van de databanktransacties 
  - **DBtransactie** = een opeenvolging van lees/schrijfopdrachten die een atomair geheel vormen
  - stelt een volgorde op waarbij interfererende lees/schrijfacties foutloos kunnen worden uitgevoerd
  - garandeert de **ACID** eigenschappen van een transactie
  - sluit de transacties af
    - **COMMIT** indien transactie correct is afgewerkt
    - **ROLLBACK** indien er een fout is opgetreden
- **Buffer manager** 
  -  beheert de buffers (deel van het geheugen) van het DBMS
  - zorgt voor een intelligent gebruik van het cache geheugen
    - voorbeeldstrategieën voor het cache geheugen
      - Gegevenslocatie: er is veel kans dat recent opgevraagde gegevens nogmaals zullen opgevraagd worden
      - 20/80 regel: 80% van de transacties lezen of schrijven slechts 20% van de opgeslagen gegevens
  - Als de buffers vol zijn, heeft de Buffer Manager nood aan een slimme procedure om die verder te kunnen gebruiken zonder informatie te verliezen (aanwezige data ergens stockeren)
  - Er is een wisselwerking tussen de Buffer Manager en de Lock Manager
- **Lock manager**
  - zorgt voor concurrency control en verzekert hierbij ten allen tijde volledige data integriteit
  - 2 soorten: read lock en write lock
  - De Lock Manager is verantwoordelijk voor het leggen en weer vrijgeven van deze locks en het registreren ervan in de **catalog**
  - De Lock Manager maakt gebruik van een **locking protocol** dat de regels voor locking beschrijft en een **lock table** waarin de lock informatie wordt opgeslagen
- **Recovery manager**
  - De Recovery Manager ziet toe op de correcte uitvoering van de databank transacties
  - De Recovery Manager schrijft in de **logfile** informatie over alle uitgevoerde databank bewerkingen
  - De Recovery Manager zal gebruikt worden om acties terug te draaien bij **afgebroken transacties** of tijdens het uitvoeren van het **recovery proces**

- DBMS utilities
  - Loading utility
  - Reorganization utility
  - Performance monitoring utilities
  - User management utilities
  - ‘Backup and Recovery’ utility
- DBMS Interfaces

## Deel 3: Soorten databanken

### indeling op basis van gegevensmodel

#### hierarchische dbms

- **gegevensmodel** is omgekeerde boom
- DML is **procedureel** en gebasseerd op recordverwerking 
- Geen query processor (logisch en fysisch datamodel lopen door elkaar)
- vb : ims van IBM

#### netwerk dbms

- Gebruiken een netwerk gegevensmodel
- CODASYL DBMS
- DML is procedureel en gebaseerd op ‘recordverwerking’
- geen query processor (logisch en fysisch datamodel lopen door elkaar)
- CA-IDMS (Computer Associates => Broadcom)

#### relationeel dbms

- Maakt gebruik van het relationeel gegevensmodel
- Momenteel het meest frequent gebruikt in de bedrijfswereld
- SQL (beschrijvend en gebaseerd op resultset)
- query processor
- Strikte scheiding tussen het logisch en het fysisch gegevensmodel
- Voorbeelden: MySQL (open source, Oracle), DB2 (IBM), Oracle DBMS (Oracle), SQLServer (Microsoft)

#### Object-Oriented DBMS (OODBMS)

- Gebaseerd op het OO gegevensmodel
- Geen probleem om het gegevensmodel van de databank te verenigen met de OO programmeertaal 
- Voorbeelden: db4o (open source, Versant), Caché (Intersystems), GemStone/S (GemTalk Systems) 
- Alleen doorgebroken in niche markten omwille van de complexiteit van het OODBMS

####  Object-Relationeel DBMS (ORDBMS)

- Wordt ook extended relationeel DBMS (ERDBMS) genoemd
- Gebruik een relationeel gegevensmodel uitgebreid met OO concepten
- DML is SQL (beschrijvend en gebaseerd op resultset)
- Voorbeelden: Oracle DBMS (Oracle), DB2 (IBM), SQLServer (Microsoft)

####  XML DBMS 

- Maakt gebruik van het XML gegevensmodel om gegevens op te slaan
- Native XML DBMS (voorbeelden: BaseX, eXist) zal de boomstructuur van een XML document projecteren op een fysische opslagstructuur
- XML-enabled DBMS (voorbeelden: Oracle, IBM DB2) zijn bestaande DBMS-systemen die uitgebreid zijn met faciliteiten om gegevens uit een XML gegevensmodel op te slaan

####  NoSQL DBMS

- bedoeld om massaal veel en ongestructureerde data op te slaan
- Kan ingedeeld worden in 
  - key-value stores (sleutelwaardedatabanken)
  - column-oriented databases (gegevens worden per kolom gestockeerd ipv per rij) 
  - graph databases – Focust op schaalbaarheid van de databank en op werken met onregelmatige en snel veranderende gegevensstructuren
  - Voorbeelden: Apache Hadoop, MongoDB, Neo4j

### indeling op basis van gelijktijdige toegankelijkheid

Single user versus multi user systemen

### indeling op basis van architectuur

#### Gecentraliseerde architectuur van het DBMS

- De data wordt gestockeerd op een centrale server

#### Client server architectuur van het DBMS

- actieve clients maken gebruik van diensten van passieve servers
- ‘fat server versus fat client’ variante

#### n-tier architectuur van het DBMS

- client met GUI functionaliteit, applicatieserver met toepassingen, databankserver met het DBMS en de databank en een webserver voor de (webbased) toegang

#### Cloud DBMS architectuur 

- De databank en het DBMS staan ‘in de Cloud’
- op servers bij een externe aanbieder (third-party)
- Voorbeelden: Apache Cassandra project en Google’s BigTable

#### Federated DBMS (~ data virtualisatie) 

- Zorgt voor een uniforme interface naar meerdere gegevensbronnen met verschillende structuur 
- Verbergt opslagdetails: om toegang te krijgen tot de gegevens moeten opslagdetails niet gekend zijn

#### in-memory DBMS

- Alle gegevens worden opgeslagen in het intern geheugen en niet op tragere extern media zoals hard-disks
- Vaak gebruikt omwille van real-time vereisten
- Voorbeeld: HANA (SAP)

### indeling op basis van gebruik

#### On-line transaction processing (OLTP)

- Focust op het beheren en verwerken van operationele en transactionele gegevens
- De databankserver moet heel veel eenvoudige transacties per tijdseenheid kunnen verwerken –
- Het DBMS moet goed ontworpen zijn om heel veel korte eenvoudige queries uit te voeren 

#### Online analytical processing (OLAP)

- Focust op het gebruiken van operationele gegevens om strategische en tactische beslissingen te nemen
- Een beperkt aantal gebruikers zal complexe queries uitvoeren
- Het DBMS moet complexe queries efficient kunnen verwerken. Complexe queries komen vaak minder voor.

#### Geometrische toepassingen

- Een geometrisch DBMS laat toe om geometrische gegevens op te slaan en op te vragen (zowel 2D als 3D) 
- Geografische Informatie Systemen (GIS) 

#### Sensoren

- Een sensor DBMS beheert de gegevens van sensoren (voorbeelden: biomedische gegevens van kledij of medische apparatuur of gegevens uit telematica toepassingen)

#### Mobiel

- Een mobiele DBMS werkt op een mobiel toestel (smartphone, tablet , …)
- Moet altijd online zijn en kunnen werken in een omgeving met een beperkte verwerkingskracht, weinig opslagruimte en beperkte energievoorziening (batterij) 

#### Open source

- De code van een open source DBMS is voor iedereen toegankelijk en iedereen kan code toevoegen – Zie ook: www.sourceforge.net – Voorbeeld: MySQL (Oracle)

#### Big Data & Analytics

- NoSQL databanken
- Focust op meer flexibele databankstructuren en databanken zonder schema
- Stockeert ongestructureerde gegeven zoals e-mails, Twitter tweets, Facebook posts, ... 

####  Multimedia

- Multimedia DBMS-systemen zorgen voor opslagruimte voor multimedia data zoals tekst, foto’s, audio, video, 3D games, ... 
- Moet ook de bijhorende query mogelijkheden (op basis van inhoud) aanbieden

# hoofdstuk 2 conceptueel model

leerdoel : De student is na dit hoofdstuk in staat om vanuit geformuleerde informatiebehoeften een conceptueel model te maken. 

competenties: De student is zich bewust van de noodzaak om eerst een concep-tueel model te maken. De student kan de relevante **entiteittypes**, **attribuuttypes** en **relatietypes** uit een tekst halen en in een conceptueel model opnemen.De student kent de notatie van het diagram en kan het toepassen. 

leerinhoud :

- Inleiding
  - Wat is een conceptueel model
  - Stappen in het bouwen van een database
- Entity Relationship Model
  - Bouwstenen
  - Diagram (ERD)
  - Relatie-attributen 

leermateriaal : 

- Boek: Part I –H3.
- Theorie slides H2
- Oefenslides H2

## Fases in Databank Ontwerp

- verwamel en analyseer functionele en inhoudelijke vereisten
- conceptueel ontwerp
- logisch ontwerp
- fysiek ontwerp

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605451275/Screenshot_2020-11-15_154043_rewauj.png"/>

### fase 1 Verzamelen en analyseren informatie

 Doel: de stappen en de benodigde data van het bedrijfsproces begrijpen. Wat nemen we op in de databank?

### fase 2 Conceptueel ontwerp

* is de abstractie van de data en de onderlinge verbanden
* moet voldoende formeel en ondubbelzinnig zijn voor de DBontwerper. 
* moet gebruiksvriendelijk zijn
* doorgaans een grafische representatie
* basis voor communicatie en discussie tussen de gebruiker van het bedrijfsproces en de databankontwerper.
* gebeurt onafhankelijk van enig databankmodel of applicatie. Anders te vroeg gekoppeld aan een bepaald databankmodel of een bepaalde applicatie. 

### fase 3 Logisch ontwerp

- **Type** databank is bekend (relationele databank, NoSQL databank, hiërarchische databank, …)
- Het product zelf ligt nog niet vast
  - voor relationele databank Microsoft SQL Server of MySQL of DB2 of …
  - voor NoSQL document databank MongoDB of CouchDB ...
  - voor hiërarschische databank IMS of …

!! Bij het opstellen van het conceptueel model en bij de overgang van het conceptueel model naar het logisch model is er mogelijk verlies van specificaties. => In een apart document bijhouden om te gebruiken bij de applicatie-ontwikkeling. 

### fase 4 fysiek ontwerp

- Is de feitelijke implementatie van het logisch model. 
- Je kiest eerst een product, ook DBMS genoemd (MySQL, Microsoft SQL Server, Oracle, …). 
- Je implementeert het logisch model en zet dit om in datadefinitiecode (= DDL), die kan worden verwerkt door het DBMS. 
- Technische details worden toegevoegd (datatypes van de attribuuttypes, …)
- Indien mogelijk worden ook de functionele beschrijvingen ‘vertaald’ naar databaseconcepten. 
- Zo kunnen de bedrijfsregels rond correct geboortejaar en jaar van overlijden omgezet worden naar een **integriteitsrestrictie**. 
- DBA kan ook aanbevelingen doen in verband met de performantie. => zie Relational Databases and Datawarehousing (2TI)

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605451594/Screenshot_2020-11-15_154621_hpyupd.png"/>

## ERD 

3 bouwstenen : 

- Entiteittypes
- Attribuuttypes
- Relatietypes

### Entiteittypes

- Een entiteit is een instantie van een entiteittype. 
- In het conceptueel model nemen we entiteittypes op 

### Attribuuttypes

- een karakteristiek van een entiteittype
- beschrijft het entiteittype
- Elke entiteit heeft een specifieke waarde voor elke attribuuttype.



#### Enkelvoudige versus samengestelde attribuuttypes

samengesteld  = het attribuuttype kan nog opgesplitst worden. Bijvoorbeeld het attribuuttype ‘adres’ kan samengesteld zijn uit een ‘straat’, een ‘nummer’, een ‘postcode’ en een 'woonplaats'. Wij werken in het conceptueel model steeds op het niveau van enkelvoudige attribuuttypes.

#### Enkelwaardige versus meerwaardige attribuuttypes

- **Enkelwaardig attribuuttype**: het attribuuttype heeft één waarde. Bijvoorbeeld het attribuuttype ‘museum’ van ‘Schilderij’ en de attribuuttypes ‘geboortejaar’ en ‘jaar overlijden’ van ‘Artiest’. 
- **Meerwaardig attribuuttype**: het attribuuttype kan (meerdere) waarden bevatten. Bijvoorbeeld een 'Artiest' kan meerdere talen spreken of meerdere hobbys hebben. In dat geval zijn ‘talen’ en ‘hobbys’ meerwaardige attribuuttypes.
- In een ERD mogen beide voorkomen (zie later). Binnen Databases vermijden we meerwaardige attributen in het ERD.

#### Afgeleide attribuuttypes 

De waarde van een afgeleid attribuuttype kan berekend worden op basis van waarden van andere attribuuttypes. 

- Een typisch voorbeeld is ‘leeftijd’: de waarde kan berekend worden als het verschil van de huidige datum en de waarde van het attribuuttype ‘geboortedatum’ 
- Afgeleide attribuuttypes worden niet opgeslagen in de databank, omdat dit een potentiële bron van inconsistentie kan zijn. Dit wordt vervangen door de basisinformatie waaruit de waarde van het attribuuttype kan berekend worden

#### Kandidaatsleutelattribuuttypes

Één attribuut of meerdere attributen samen die de entiteiten van een entiteittype op een unieke, irreducibele manier identificeren, vormen een kandidaatsleutel van het entiteittype. 

- Irreducibiliteit wil zeggen dat er geen uniciteit mag gelden als men een 1 of meerdere attributen weglaat.
- De attributen die deel uitmaken van een kandidaatsleutel noem je kandidaatsleutelattributen. 
- Er kunnen meerdere kandidaatsleutels zijn. Later wordt uit de kandidaatsleutels één sleutel gekozen als primaire sleutel.

### Relatietypes

- Entiteittypes kunnen onderlinge verbanden hebben
- **Graad** : Er kunnen één, twee, drie of meer entiteittypes betrokken zijn in een relatie
  - één entiteittype: een artiest kan een afstammeling zijn van een andere artiest
  - twee entiteittypes: een schilderij werd geschilderd door een of meerdere artiest(en)
  - drie entiteittypes: een dokter schrijft een geneesmiddel voor aan een patiënt
- Een **relatietype** is een verzameling van relaties tussen instanties van één, twee of meer al dan niet verschillende **entiteittypes**. Men spreekt respectievelijk van een **unair** (n = 1), binair (n = 2), **ternair** (n = 3) of **n-air** (n > 3) relatietype. Elk relatietype wordt gekenmerkt door een naam. 
- De **rollen** van een relatietype beschrijven de specifieke rol van elk **entiteittype** in het **relatietype**. 

Voorbeeld: Stel er bestaan geen twee artiesten met eenzelfde combinatie van voornaam en familienaam => voornaam en familienaam zijn kandidaatsleutelattributen en vormen (samen) de kandidaatsleutel. De combinatie van voornaam, familienaam en geboortedatum is geen kandidaatsleutel want de combinatie van voornaam en familienaam op zich is al uniek => voornaam, familienaam én geboortedatum zijn **niet irreducibel**, maw geboortedatum is **overbodig om uniciteit af te dwingen**.

- Alle enkelvoudige kandidaatsleutels (bestaat uit 1 attribuuttype) worden onderlijnd. Indien een kandidaatsleutel uit meerdere attribuuttypes bestaat (samengestelde kandidaatsleutel), duiden we dit dan aan met de ’u’- constraint.

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605458737/Screenshot_2020-11-15_174518_olffve.png"/>

### cardinaliteit

- Elk relatietype heeft een **minimum-** en een **maximumcardinaliteit**.

- Cardinaliteit betekent aantal en wordt uitgedrukt als een getal. 

- Maximumcardinaliteit = het maximum aantal entiteiten van het entiteittype dat op een gegeven tijdstip kan deelnemen aan een relatie van het relatietype. Mogelijke waarden zijn 1 of N. 

  - 1: één entiteit kan in relatie staan met maximum 1 (andere) entiteit via dit relatietype
  - N: één entiteit kan in relatie staan met N (andere) entiteiten via dit relatietype. N is een willekeurig geheel getal groter dan 1.

- Minimumcardinaliteit = het minimum aantal entiteiten van het entiteittype dat op elk tijdstip moet voorkomen in een relatie van het relatietype. Mogelijke waarden zijn 0 of 1.

  - 0: sommige entiteiten nemen niet deel aan de relatie. De relatie is optioneel voor dat entiteittype. 

  - 1: een entiteit moet altijd in relatie staan met minimum één andere entiteit

    

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605459047/Screenshot_2020-11-15_175034_bjyq6n.png"/>

# hoofdstuk 3 conceptueel model en zwakke entiteittype.



leerinhoud: 

- Entity Relationship Model
  - Zwak entiteittype
  - Historiek

leermateriaal :

- Theorieslides H3
- Oefeningenslides H3

