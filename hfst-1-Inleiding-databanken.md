# Hoofdstuk 1 Inleiding - Databanken gekaderd

**leerdoel:** 

- inzicht geven in wat een database is en wat de componenten zijn. 
- verklaar het ontstaan, de evolutie en de verschillende soorten databanken en de verschillen met de vroegere manieren van data-opslag.

**leerinhoud:**

- Definities: Database | Database Management Systeem | Database programma.
- toepassingen

- Gegevensmanagement via bestanden en database.
- Geschiedenis: 1e generatie databanken | 2e generatie: Relationele databanken | 3e generatie: nosql databanken.

**LEERMATERIAAL**

- Boek: Part I – H1 en H2.
- Slides DB I H1Databanken gekaderd

- STUDIEAANWIJZINGEN Neem de slides door, samen met het boek. Dit hoofdstuk is grotendeels achtergrondinformatie om aan te tonen hoe de manieren van data-opslag zijn geëvolueerd en wat het belang is van een goede, centrale en duurzame data-opslag. In deze les is geen oefening opgenomen, dus normaal gezien zalje dit in minder dan 2u kunnen afronden.

## deel 1 basisbegrippen

**databank** = Een **gedeelde** verzameling van **logisch met elkaar verbonden** gegevens en hun **beschrijving**, 
ontworpen om aan de informatienoden van een organisatie te voldoen.

- digitaal opgeslagen
- specifiek bedrijfsproces
- specifieke groep (gebruikers en applicaties)

**databasemanagementsystemen** = een verzameling computer programma’s (softwaremodules) – Nodig om een databank

- definiëren - Data Definition Language
- creëren
- wijzigen - Data Manipulation Language
- beheren - Data Control Language
- gebruiken (gegevens invoeren en ‘lezen’) - Data Query Language

**databasesysteem** = databasemanagementsystemen + databank

### gegevensmanagement 

Gedecentraliseerde aanpak waarbij elke applicatie gegevens afzonderlijk zal bijhouden leidt tot de volgende :cry: :

- **redundante** opslag (dubbele opslag)
- **inconsistente** data (wijzigingen niet overal doorgevoerd)
- Sterke koppeling tussen applicaties en data
- Concurrente toegang moeilijk te realiseren
- inflexibel aangezien app moet worden aangepast indien men gegevens op andere manier wil benaderen

Gecentraliseerd databankgericht aanpak waarbij dbms opvraging van gegevens verwerkt heeft meer :smile: 

### delen van een databasesystem

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609065230/Screenshot_from_2020-12-27_11-33-19_uxclcm.png" width=300 />

#### Databasemodel versus instances.

- **Databasemodel** = databaseschema
  - bevat beschrijving van de databankstructuur en specificaties v/d elementen, hun eigenschappen,relaties, beperkingen, ...
  - Opgesteld tijdens databankontwerp
  - Opgeslagen in de **catalog**
  - Bevat **datamodellen**
-  **instance** = Toestand van een databank
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

#### Datamodel

= Ondubbelzinnige beschrijving van de gegevens, de onderlinge relaties, de beperkingen

- **Conceptueel gegevensmodel**
  - algemene beschrijving gegevenselementen, kenmerken en relaties
  - Gebruikt door ‘IT’ en ‘business’
  - Weergave hoe ‘de business’ de gegevens ziet
  - Voorstelling: (E)ERD diagram
- **Logisch gegevensmodel** = vertaling conceptueel gegevensmodel naar het type databankmodel (Relationeel, hiërarchisch, OO, XML, NoSQL...)
- **Fysiek gegevensmodel** = omzetten naar intern (fysiek) gegevensmodel, Geeft informatie over fysieke opslag:
  - waar worden welke gegevens opgeslagen
  - Onder welke vorm
  - Indexen die het ophalenversnellen
- **Externe gegevensmodellen / VIEWS** 
  - Deelverzameling van het logisch model
  - Voor een specifieke doelgroep
  - Ook ‘VIEWS’ genoemd.

<img src="https://i.pinimg.com/originals/86/7f/a7/867fa7370c3a0d9508db123a45b2c5b2.png" width = 500/>

#### 3 lagenmodel

<img src="https://static.javatpoint.com/dbms/images/dbms-three-schema-architecture.png" width=350 />



<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1605434487/Screenshot_2020-11-15_110036_axlmkv.png"/>

**catalog**

- Schatkist van DBMS
- Definities en beschrijving elementen in de DB (= metadata)
- Definities logisch gegevensmodel en intern gegevensmodel
- Zorgt voor synchronisatie en consistentie van de gegevensmodellen

**databankgebruikers**

- IT Architect ontwerpt conceptueel gegevensmodel in samenspraak met de ‘business’
- Dbontwerper vertaalt conceptueel model naar logisch en intern model
- DBA (databankbeheerder of database administrator) implementeert en monitort DB •
- Applicatieontwikkelaar schrijft databankprogramma’s/databankapplicaties
- ‘Business’ gebruikt databankapplicaties en voert op die manier databankacties ui

**taal relationele databanken**

- SQL (Structured query language) = DDL + DML (+ DCL)
- DML (Data manipulation language): verzameling instructies om gegevens in de databank toe te voegen, te wijzigen, te verwijderen en te raadplegen zowel via interactieve editor als vanuit applicatie
- DDL (Data Definition language): de kenmerken van de gegevens en hun relaties beschrijven

**gegevensonafhankelijkheid**

= wijzigingen aan de gegevensbeschrijving hebben weinig tot geen impact op de applicaties

- **Fysieke gegevensonafhankelijkheid**: wijzigingen van de opslagspecificaties hebben geen invloed op logisch model noch op de applicatie wordt opgevangen door het DBMS
- **Logische gegevensonafhankelijkheid**: minimale aanpassingen aan de applicaties bij wijzigingen logisch model

**modellen**

- **Gegevensmodel**: weergave gegevens met hun kenmerken en hun relaties
- **Conceptueel gegevensmodel**: perfecte weergave van de gegevensvereisten van de ‘business’ opgesteld met de business omgezet naar logisch en intern model
- !!Veronderstellingen en ontbrekende informatie duidelijk vermelden!!

**(on)gestructureerde gegevens**

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



<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609075362/Untitled_Diagram_1_yoa3xu.png"/>

### 

DML compiler = zet DML commando’s om naar interne commando’s

```
**procedurele DML** = geeft expliciet aan **HOE** de databank doorlopen wordt
- **Record-at-a-time DML** = het resultaat is steeds 1 rij; een result-set wordt rij per rij aangeboden
- Geen query processor

try{ 
	Statement st = connection.createStatement(); 
	ResultSet rs = st.executeQuery("SELECT * FROM students"); 
	while(rs.next){ 
		String s = rs.getString(1); 
		//dst... 
	} 
} catch(SQLException e){} 
```

```
declarative DML = geeft aan **WAT** moet opgehaald worden of **WELKE** wijzigingen moeten aangebracht worden

- **Set-at-a-time DML** = het resultaat is een volledige set
- query processor

INSERT INTO Employee (Id, LastName, FirstName) 
VALUES (7, 'Muhammad', 'Faizan') 
```

- Relationele databank <-> OO applicaties
  - Problemen met het op elkaar afstemmen van Object Oriented concepten en relationele concepten = **Impedance mismatch problem**
  - **Impedance mismatch solutions** => Concepten op elkaar afstemmen (**ORM**) Middleware die de datastructuren van het relationeel kan afstemmen op de gebruikte programmeertaal
- DML statements kunnen geïntegreerd zijn in applicaties van verschillende talen
- De DML compiler zal de SQLstatements uit deze applicaties afzonderen
- De DML compiler zal dan in samenwerking met de andere componenten de DML statements uitvoeren
- Een lijst met fouten wordt gegenereerd indien van toepassing

---

**Query Parser**

- analyseert de query en zet die om in een intern formaat
  - Voorbeeld: select \* from kunstenaar order geboortejaar Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'geboortejaar' at line 2
- Query Parser zal nagaan of de query syntactisch en **semantisch** correct is
  - Voorbeeld: select naam from kunstenaar join kunstwerk Error Code: 1052. Column 'naam' in field list is ambiguous

---

**Query optimizer** 

- zal meerdere **execution plans** opstellen en de kost ervan evalueren. Hiervoor baseert die zich op geschatte
  - Aantal I/O acties
  - Kost verwerking door de CPU
  - Uitvoeringstijd
- De schatting gebeurt op basis van de informatie in de catalog en statistische informatie
- Query Optimizer is een zeer belangrijk concurrentieel/competitief aspect van een DBMS

- Query optimizer stelt het finale execution plan op

---

- **Transaction manager** = houdt toezicht op de uitvoering van de databanktransacties
  - **DBtransactie** = een opeenvolging van lees/schrijfopdrachten die een atomair geheel vormen
  - stelt een volgorde op waarbij interfererende lees/schrijfacties foutloos kunnen worden uitgevoerd
  - garandeert de **ACID** eigenschappen van een transactie
  - sluit de transacties af
    - **COMMIT** indien transactie correct is afgewerkt
    - **ROLLBACK** indien er een fout is opgetreden
- **Buffer manager**
  - beheert de buffers (deel van het geheugen) van het DBMS
  - zorgt voor een intelligent gebruik van het cache geheugen
    - voorbeeldstrategieën voor het cache geheugen
      - Gegevenslocatie: er is veel kans dat recent opgevraagde gegevens nogmaals zullen opgevraagd worden
      - 20/80 regel: 80% van de transacties lezen of schrijven slechts 20% van de opgeslagen gegevens
  - Als de buffers vol zijn, heeft de Buffer Manager nood aan een slimme procedure om die verder te kunnen gebruiken zonder informatie te verliezen (aanwezige data ergens stockeren)
  - Er is een wisselwerking tussen de Buffer Manager en de Lock Manager
- **Lock manager**
  - zorgt voor **concurrency control** en verzekert hierbij ten allen tijde volledige data integriteit
  - 2 soorten: read lock en write lock
  - De Lock Manager is verantwoordelijk voor het leggen en weer vrijgeven van deze locks en het registreren ervan in de **catalog**
  - De Lock Manager maakt gebruik van een **locking protocol** dat de regels voor locking beschrijft en een **lock table** waarin de lock informatie wordt opgeslagen
- **Recovery manager**
- De Recovery Manager ziet toe op de correcte uitvoering van de databank transacties
  - De Recovery Manager schrijft in de **logfile** informatie over alle uitgevoerde databank bewerkingen
  - De Recovery Manager zal gebruikt worden om acties terug te draaien bij **afgebroken transacties** of tijdens het uitvoeren van het **recovery proces**
  
- DBMS utilities : Loading utility / Reorganization utility / Performance monitoring utilities / User management utilities / ‘Backup and Recovery’ utility

## Deel 3: Soorten databanken

### indeling op basis van gegevensmodel

#### hiërarchische dbms

- **gegevensmodel** is omgekeerde boom
- DML is **procedureel** en gebaseerd op recordverwerking
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

#### Object-Relationeel DBMS (ORDBMS)

- Wordt ook extended relationeel DBMS (ERDBMS) genoemd
- Gebruik een relationeel gegevensmodel uitgebreid met OO concepten
- DML is SQL (beschrijvend en gebaseerd op resultset)
- Voorbeelden: Oracle DBMS (Oracle), DB2 (IBM), SQLServer (Microsoft)

#### XML DBMS

- Maakt gebruik van het XML gegevensmodel om gegevens op te slaan
- Native XML DBMS (voorbeelden: BaseX, eXist) zal de boomstructuur van een XML document projecteren op een fysische opslagstructuur
- XML-enabled DBMS (voorbeelden: Oracle, IBM DB2) zijn bestaande DBMS-systemen die uitgebreid zijn met faciliteiten om gegevens uit een XML gegevensmodel op te slaan

#### NoSQL DBMS

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

#### Multimedia

- Multimedia DBMS-systemen zorgen voor opslagruimte voor multimedia data zoals tekst, foto’s, audio, video, 3D games, ...
- Moet ook de bijhorende query mogelijkheden (op basis van inhoud) aanbieden