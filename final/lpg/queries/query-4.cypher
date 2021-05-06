# Vypise nfc tag zakaznika k dane transakci

MATCH (nfctag)<-[:IDENTIFIED]-(cust)-[b:BOUGHT]->()-[:DESCRIBED]->(description)
RETURN cust.name, b.price, description.name, collect(DISTINCT nfctag.code) ;