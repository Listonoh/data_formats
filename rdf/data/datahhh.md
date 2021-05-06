data.ttl - 
    máte nějaký hrozný nepořádek v prefixech, až to vypadá, že je přiřazujete nějak náhodně.
    např. vcard:islay - vcard je slovník pro vizitky. 
    Proč jeho prefix používáte pro instanci regionu? 
    A bevon pro instance palíren? Pro IRI instancí, tj. konkrétních věcí, 
    byste měli zvolit vlastní pravidla pro jejich tvorbu a založit je třeba na tom vašem http://example.org/whiskeyman/ .
    
Zrovnatak vaše predikáty (např. buyer) 
    - proč pro ně používáte prefix dcat: který patří slovníku pro popis metadat datových sad? 
    V zadání je, že pro vaše predikáty a třídy máte použít @prefix ex: .

dcterms:name, dcterms:email, dcterms:code, ... - tyto predikáty ve slovníku dublin core neexistují. 
Tedy buď použijte nějaké, které existují, nebo vytvořte a popište vlastní, s prefixem ex:


# TODO
- [] prefixy
- [✓] prepsat tagy "Redbreast 12 y.o."@en
- [ ] cenu přemodelujte podle GoodRelations - musí mít zvlášť výši a zvlášť měnu
- [] vlasti ex (viz druhej ukol)
- [] prepsat tagy "Redbreast 12 y.o."@en


texty v přirozeném jazyce musí mít language tagy indikující onen jazyk, např "Redbreast 12 y.o."@en
