# tohle vypise vsechny uzivatele kteri nekdy neco koupili za nedefaultni cenu 

MATCH (customer:Customer)-[trans:BOUGHT]->(b:Bottle)
WHERE trans.price <> (b.priceML * trans.ammountML)
RETURN DISTINCT customer.name;