<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions"
   xmlns:xsd="http://www.w3.org/2001/XMLSchema#">
    <xsl:output method="text" encoding="UTF-8" />
    <xsl:variable name="prefix">http://example.org/whiskeyman/bottles/</xsl:variable>
    
    <xsl:template match="bottles">
    @prefix ex: &lt;http://example.org/whiskeyman/&gt; .
    @prefix whisky: &lt;https://vocab.org/whisky/terms/&gt; .
    @prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .
    @prefix schema: &lt;http://schema.org&gt; .
    @prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
    @prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
    @prefix cerif: &lt;http://www.eurocris.org/ontologies/cerif/1.3&gt; .

    <xsl:apply-templates/>
    </xsl:template>


    

    <xsl:template match="bottle">
    <xsl:variable name="bottleIRI" select="concat($prefix, 'bottle/', fn:position())"/>
    &lt;<xsl:value-of select="$bottleIRI"/>&gt; a ex:Bottle ;
        ex:PriceForML <xsl:value-of select="shotPrice/value"/> ;
        cerif:currency  &quot;<xsl:value-of select="shotPrice/currency"/>&quot; ;
        ex:PriceForBottle <xsl:value-of select="bottlePrice/value"/> ;
        schema:purchaseDate  &quot;<xsl:value-of select="replace(purchaseDate, '&quot;', '\\&quot;')"/>&quot;<xsl:value-of select="purchaseDate/@dateType"/>;
        schema:inStock  <xsl:value-of select="inStock"/> ;
        schema:barcode  &quot;<xsl:value-of select="barcode"/>&quot; ;
        ex:bottleID           <xsl:value-of select="bottleID"/> .
        <xsl:apply-templates>
                <xsl:with-param name="bottleIRI" select="$bottleIRI"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="bottleDescription">
        <xsl:param name="bottleIRI"/>
        <xsl:variable name="bottleDescriptionIRI" select="concat($prefix, 'bottleDescription/', fn:position())"/>
        &lt;<xsl:value-of select="$bottleIRI"/>&gt; ex:Description &lt;<xsl:value-of select="$bottleDescriptionIRI"/>&gt; .
        &lt;<xsl:value-of select="$bottleDescriptionIRI"/>&gt; a ex:Bottle, ex:Description ;
                schema:name &quot;<xsl:value-of select="name"/>&quot; ;
                whisky:age <xsl:value-of select="age"/> ;
                whisky:abv <xsl:value-of select="voltage"/> .
                <xsl:apply-templates>
                        <xsl:with-param name="bottleDescriptionIRI" select="$bottleDescriptionIRI"/>
                </xsl:apply-templates>
    </xsl:template>

        <xsl:template match="distillery">
        <xsl:param name="bottleDescriptionIRI"/>
        <xsl:variable name="distilleryIRI" select="concat($prefix, 'distillery/', fn:position())"/>
        &lt;<xsl:value-of select="$bottleDescriptionIRI"/>&gt; ex:Description &lt;<xsl:value-of select="$distilleryIRI"/>&gt; .
        &lt;<xsl:value-of select="$distilleryIRI"/>&gt; a ex:Description, ex:Distillery ;
        schema:name  &quot;<xsl:value-of select="replace(name, '&quot;', '\\&quot;')"/>&quot;@<xsl:value-of select="name/@xml:lang"/> ;
        ex:founded  <xsl:value-of select="founded"/> .
        <xsl:apply-templates>
                <xsl:with-param name="distilleryIRI" select="$distilleryIRI"/>
        </xsl:apply-templates>
        </xsl:template>
    
    <xsl:template match="region">
        <xsl:param name="distilleryIRI"/>
        <xsl:variable name="regionIRI" select="concat($prefix, 'region/', fn:position())"/>
        &lt;<xsl:value-of select="$distilleryIRI"/>&gt; ex:Region &lt;<xsl:value-of select="$regionIRI"/>&gt; .
        &lt;<xsl:value-of select="$regionIRI"/>&gt; a ex:Distillery, ex:Region ;
                schema:name &quot;<xsl:value-of select="replace(name, '&quot;', '\\&quot;')"/>&quot;@<xsl:value-of select="name/@xml:lang"/> .
    </xsl:template>

    <xsl:template match="transactions/transaction">
        <xsl:param name="bottleIRI"/>
        <xsl:variable name="transIRI" select="concat($prefix, 'transaction/', fn:position())"/>
        &lt;<xsl:value-of select="$bottleIRI"/>&gt; ex:Transaction &lt;<xsl:value-of select="$transIRI"/>&gt; .
        &lt;<xsl:value-of select="$transIRI"/>&gt; a ex:Bottle, ex:Transaction ;
                ex:AmmountMl            &quot;<xsl:value-of select="ammountML"/>&quot; ;
                schema:Price            <xsl:value-of select="price/value"/> ;
                cerif:currency          &quot;<xsl:value-of select="price/currency"/>&quot; ;
                schema:purchaseDate     &quot;<xsl:value-of select="replace(creationTime, '&quot;', '\\&quot;')"/>&quot;<xsl:value-of select="creationTime/@dateType"/> ;
                ex:customerID           <xsl:value-of select="customerID"/> .
    </xsl:template>

    <xsl:template match="ownerships/ownership">
        <xsl:param name="bottleIRI"/>
        <xsl:variable name="ownershipIRI" select="concat($prefix, 'ownership/', fn:position())"/>
        &lt;<xsl:value-of select="$bottleIRI"/>&gt; ex:Ownership &lt;<xsl:value-of select="$ownershipIRI"/>&gt; .
        &lt;<xsl:value-of select="$ownershipIRI"/>&gt; a ex:Bottle, ex:Ownership ;
                ex:Share        <xsl:value-of select="shareSize"/> ;
                ex:customerID   <xsl:value-of select="customerID"/> .
    </xsl:template>

    <xsl:template match="specialPrices/specialPrice">
        <xsl:param name="bottleIRI"/>
        <xsl:variable name="sPriceIRI" select="concat($prefix, 'specialPrice/', fn:position())"/>
        &lt;<xsl:value-of select="$bottleIRI"/>&gt; ex:SpecialPrice &lt;<xsl:value-of select="$sPriceIRI"/>&gt; .
        &lt;<xsl:value-of select="$sPriceIRI"/>&gt; a ex:Bottle, ex:SpecialPrice ;
                schema:Price            <xsl:value-of select="price/value"/> ;
                cerif:currency          &quot;<xsl:value-of select="price/currency"/>&quot; ;
                ex:customerID           <xsl:value-of select="customerID"/> .
    </xsl:template>


    <xsl:template match="text()"/>
</xsl:stylesheet>