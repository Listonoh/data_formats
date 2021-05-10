<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions"
   xmlns:xsd="http://www.w3.org/2001/XMLSchema#">
    <xsl:output method="text" encoding="UTF-8" />
    <xsl:variable name="prefix">http://example.org/whiskeyman/customers/</xsl:variable>
    
    <xsl:template match="customers">
    @prefix ex: &lt;http://example.org/whiskeyman/&gt; .
    @prefix whisky: &lt;https://vocab.org/whisky/terms/&gt; .
    @prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .
    @prefix schema: &lt;http://schema.org&gt; .
    @prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
    @prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
    @prefix cerif: &lt;http://www.eurocris.org/ontologies/cerif/1.3&gt; .

    <xsl:apply-templates/>
    </xsl:template>


    

    <xsl:template match="customer">
    <xsl:variable name="customerIRI" select="concat($prefix, 'customer/', fn:position())"/>
    &lt;<xsl:value-of select="$customerIRI"/>&gt; a ex:Customer ;
        ex:cusomerId        <xsl:value-of select="customerID"/> ;
        schema:name         &quot;<xsl:value-of select="name"/>&quot; ;
        schema:givenName    &quot;<xsl:value-of select="givenName"/>&quot; ;
        schema:familyName   &quot;<xsl:value-of select="familyName"/>&quot; ;
        schema:email        &quot;<xsl:value-of select="email"/>&quot; ;
        ex:login            &quot;<xsl:value-of select="login"/>&quot; .
        <xsl:apply-templates>
                <xsl:with-param name="customerIRI" select="$customerIRI"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="nfcTags/nfcTag">
        <xsl:param name="customerIRI"/>
        <xsl:variable name="nfcTagIRI" select="concat($prefix, 'customer/nfcTag/', fn:position())"/>
        &lt;<xsl:value-of select="$customerIRI"/>&gt; ex:nfcTag &lt;<xsl:value-of select="$nfcTagIRI"/>&gt; .
        &lt;<xsl:value-of select="$nfcTagIRI"/>&gt; a ex:customer, ex:nfcTag ;
                schema:text             &quot;<xsl:value-of select="code"/>&quot; ;
                schema:purchaseDate     &quot;<xsl:value-of select="replace(creationTime, '&quot;', '\\&quot;')"/>&quot;<xsl:value-of select="creationTime/@dateType"/> .
    </xsl:template>

    <xsl:template match="transactions/transaction">
        <xsl:param name="customerIRI"/>
        <xsl:variable name="transIRI" select="concat($prefix, 'customer/transaction/', fn:position())"/>
        &lt;<xsl:value-of select="$customerIRI"/>&gt; ex:Transaction &lt;<xsl:value-of select="$transIRI"/>&gt; .
        &lt;<xsl:value-of select="$transIRI"/>&gt; a ex:Customer, ex:Transaction ;
                ex:bottleID             <xsl:value-of select="bottleID"/> ;
                ex:AmmountMl            <xsl:value-of select="ammountML"/> ;
                schema:Price            <xsl:value-of select="price/value"/> ;
                cerif:currency          &quot;<xsl:value-of select="price/currency"/>&quot; ;
                schema:purchaseDate     &quot;<xsl:value-of select="replace(creationTime, '&quot;', '\\&quot;')"/>&quot;<xsl:value-of select="creationTime/@dateType"/> .
    </xsl:template>

    <xsl:template match="ownerships/ownership">
        <xsl:param name="customerIRI"/>
        <xsl:variable name="ownershipIRI" select="concat($prefix, 'customer/ownership/', fn:position())"/>
        &lt;<xsl:value-of select="$customerIRI"/>&gt; ex:Ownership &lt;<xsl:value-of select="$ownershipIRI"/>&gt; .
        &lt;<xsl:value-of select="$ownershipIRI"/>&gt; a ex:Bottle, ex:Ownership ;
                ex:Share        <xsl:value-of select="shareSize"/> ;
                ex:bottleID     <xsl:value-of select="bottleID"/> .
    </xsl:template>


    <xsl:template match="text()"/>
</xsl:stylesheet>