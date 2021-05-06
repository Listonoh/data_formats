# vypise vsechny regiony od kterych uzivatel koupil lahev

MATCH (person)-[:BOUGHT]->(b)-[:DESCRIBED]->(c)-[:DISTILLED]->(k)-[:HAILSFROM]->(region) 
RETURN person.name, collect(DISTINCT region.name);
