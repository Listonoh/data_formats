CREATE (fojtiseq:Customer{name: 'Vojtech Brecka',email:'HyperKraken@hotmail.com', status: 'Active', login: 'TurboKraken', pictureUrl: 'https://media.nature.com/w700/magazine-assets/d41586-018-06096-8/d41586-018-06096-8_16070510.jpg'})
CREATE (matisek:Customer{name: 'Matyas Brabec',email:'Stooped@hotmail.com', status: 'Banned', login: 'KutalejiciseKrava', pictureUrl: 'https://i.redd.it/z7txvl304rj21.jpg'})
CREATE (listecek:Customer{name: 'Lee Stack',email:'Listonoh@ddd.com', status: 'Still alive', login: 'LeeStack', pictureUrl: 'https://www.dobryden.cz/data/cp6/001716_006126.jpg'})
CREATE (kulicka:Customer{name: 'Vojtech Mykiska',email:'TurboBurt@nitroParek.com', status: 'Fat as f**k', login: 'TurboBurt', pictureUrl: 'https://i.redd.it/5jn02ro6gdt11.jpg'})

CREATE (testTag:NfcTag {code: 'OXPR456ADS75', created: '2020-06-09'})
CREATE (fojtisequv:NfcTag {code: 'OXPC987ADS75', created: '2001-09-11'})
CREATE (kulickuv:NfcTag {code: 'OXPZ6940ADS75', created: '2012-04-20'})
CREATE (listSvobod:NfcTag {code: 'OXPZ5540ADS75', created: '2022-04-20'})

CREATE
(fojtiseq)-[:IDENTIFIED]->(testTag),
(fojtiseq)-[:IDENTIFIED]->(fojtisequv),
(listecek)-[:IDENTIFIED]->(listSvobod),
(kulicka)-[:IDENTIFIED]->(kulickov)

CREATE (matyseq_laga16:Bottle {priceML: 69,inStock: false, bottlePrice: 1130,barcode: 1348690})
CREATE (matyseq_glen15:Bottle {priceML: 87,inStock: true, bottlePrice: 978,barcode: 3454665})
CREATE (fojtiseq_laga16:Bottle {priceML: 76,inStock: true, bottlePrice: 1159,barcode: 2345657})
CREATE (honziq_redb12:Bottle {priceML: 90,inStock: true, bottlePrice: 1430,barcode: 1235112})
CREATE (vojta_bowm18:Bottle {priceML: 175,inStock: true, bottlePrice: 1930,barcode: 7777777})

CREATE
(matisek)-[:AccessToSpecialPrice{price: 65}]->(matyseq_laga16),
(fojtiseq)-[:AccessToSpecialPrice{price: 0}]->(fojtiseq_laga16),
(matisek)-[:AccessToSpecialPrice{price: 50}]->(honziq_redb12)

CREATE
(fojtiseq)-[:OWNS{ownedFrom:'1939-09-01T00:00:00', share:100}]->(fojtiseq_laga16),
(honziq)-[:OWNS{ownedFrom:'2020-02-20T20:20:20', share:50}]->(honziq_redb12),
(matyseq)-[:OWNS{ownedFrom:'2021-01-12T12:00:00', share:50}]->(matyseq_redb12)

CREATE
(fojtiseq)-[:BOUGHT{ammountML: 200, price:0}]->(fojtiseq_laga16),
(fojtiseq)-[:BOUGHT{ammountML: 400, price:120}]->(honziq_redb12),
(matisek)-[:BOUGHT{ammountML: 1000, price:69000}]->(matyseq_laga16)

CREATE (laga16:BottleDescription {name:'Lagavulin 16 y.o.', age: 16, alocholByVolume: 43})
CREATE (glen15:BottleDescription {name:'Glenfiddich 15 y.o.', age: 15, alocholByVolume: 40})
CREATE (bowm18:BottleDescription {name:'Bowmore 18 y.o.', age: 18, alocholByVolume: 43})
CREATE (redb12:BottleDescription {name:'Redbreast 12 y.o.', age: 12, alocholByVolume: 40})

CREATE
(matyseq_laga16)-[:DESCRIBED]->(laga16),
(matyseq_glen15)-[:DESCRIBED]->(glen15),
(fojtiseq_laga16)-[:DESCRIBED]->(laga16),
(honziq_redb12)-[:DESCRIBED]->(redb12),
(vojta_bowm18)-[:DESCRIBED]->(bowm18)

CREATE (laga:Distillery {name: 'Lagavulin', founded: 1816})
CREATE (bowm:Distillery {name: 'Bowmore', founded: 1779})
CREATE (glen:Distillery {name: 'Glenmorangie', founded: 1843})
CREATE (redb:Distillery {name: 'Redbreast', founded: 1903})

CREATE
(laga16)-[:DISTILLED]->(laga),
(glen15)-[:DISTILLED]->(glen),
(bowm18)-[:DISTILLED]->(bowm),
(redb12)-[:DISTILLED]->(redb)


CREATE (islay:Region {name: 'Islay'})
CREATE (highland:Region {name: 'Highland'})
CREATE (speyside:Region {name: 'Speyside'})
CREATE (ireland:Region {name: 'Ireland'})

CREATE
(laga)-[:HAILSFROM]->(islay),
(bowm)-[:HAILSFROM]->(highland),
(bowm)-[:HAILSFROM]->(speyside),
(glen)-[:HAILSFROM]->(speyside),
(redb)-[:HAILSFROM]->(ireland)
