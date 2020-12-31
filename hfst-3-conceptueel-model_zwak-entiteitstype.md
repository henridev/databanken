# hoofdstuk 3 conceptueel model en zwakke entiteittype.

leerinhoud:


leermateriaal :



**leerdoel:** 

- een conceptueel model te maken, inclusief zwakke entiteittypes

**leerinhoud:**

- Entity Relationship Model
  - Zwak entiteittype
  - Historiek


**LEERMATERIAAL**

- Theorieslides H3
- Oefeningenslides H3



## **zwak entiteitstype**  

- **bestaansafhankelijk** = minimumcardinaliteit is 1

- s̶l̶e̶u̶t̶e̶l̶a̶t̶t̶r̶i̶b̶u̶u̶t̶ 

- heeft andere entiteitstypes nodig voor identificatie = **identificerende entiteittypes**

  > zwakke entiteiten hebben enkel kandidaatsleutelattribuuttypes. Die zorgen, samen met de kandidaatsleutelattribuuttypes van de identificerende entiteittypes, voor een unieke, irreducibele identificatie van de zwakke entiteittypes. beide kandidaatsleutelattribuuttypes zijn **partiële kandidaatsleutels.**



> voorbeeld
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609402609/db-h3_w60te9.png" />



> oefening voorbeeld
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609404251/db-h3-Page-2_fjqolv.png"/>



## historiek

<img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609404990/db-h3-Page-3_j8g2tm.png"/>



Er wordt een bijkomend, zwak entiteittype Ontlening toegevoegd. 

- Ontlening is zwak omdat het bestaansafhankelijk is van Lid en van Exemplaar ÉN omdat het zelf niet over voldoende attribuuttypes beschikt om zich te identificeren 
- We noemen het entiteittype Ontlening een **historiek**
- Een historiek wordt altijd voorgesteld door een apart, zwak entiteittype en ***zal altijd een datum-attribuut bevatten.***

> vb huwelijk
>
> <img src="https://res.cloudinary.com/dri8yyakb/image/upload/v1609405478/db-h3-Page-4_k76yrz.png"/>

