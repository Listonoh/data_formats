#Vypise vsechny lahve co jsou na sklade se vsema informacema o lahvi i o destlerkach

MATCH (bottle)-[:DESCRIBED]->(description)-[:DISTILLED]->(distillery)-[:HAILSFROM]->(region)
WHERE bottle.inStock = true
RETURN DISTINCT description.name, distillery.name, collect(DISTINCT region.name);