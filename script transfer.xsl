<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    
    
 <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:variable name="GOTepisodes" select="collection('xml/?select=*.xml')"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="homepage.css"/>
                <title>Episode Scripts</title>
            </head>
            <body>
            <xsl:apply-templates/>
            </body>   
        </html>
    </xsl:template>
    <xsl:template match="//title">
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    <xsl:template match="//stageDirection">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="direction">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="speech">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="speaker">
        <span class="speaker">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="speaker[@house='Stark']">
        <span class="speaker" house="Stark">
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="speaker[@house='Targaryen']">
        <span class="speaker" house="Targaryen">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Lannister']">
        <span class="speaker" house="Lannister">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Dondarrion']">
        <span class="speaker" house="Dondarrion">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Tollett']">
        <span class="speaker" house="Tollett">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Giantsbane']">
        <span class="speaker" house="Giantsbane">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Umber']">
        <span class="speaker" house="Umber">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Tarly']">
        <span class="speaker" house="Tarly">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Mormont']">
        <span class="speaker" house="Mormont">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Baratheon']">
        <span class="speaker" house="Baratheon">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Clegane']">
        <span class="speaker" house="Clegane">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="speaker[@house='Bolton']">
        <span class="speaker" house="Bolton">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Seaworth']">
        <span class="speaker" house="Seaworth">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Greyjoy']">
        <span class="speaker" house="Greyjoy">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Stokeworth']">
        <span class="speaker" house="Stokeworth">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Strickland']">
        <span class="speaker" house="Strickland">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Royce']">
        <span class="speaker" house="Royce">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Arryn']">
        <span class="speaker" house="Arryn">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Tully']">
        <span class="speaker" house="Tully">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Tarth']">
        <span class="speaker" house="Tarth">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Craster']">
        <span class="speaker" house="Craster">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
    <xsl:template match="speaker[@house='Payne']">
        <span class="speaker" house="Payne">
            <xsl:apply-templates/>
        </span>    
    </xsl:template>
</xsl:stylesheet>