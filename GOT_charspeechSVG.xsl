<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:variable name="interval" select="100"/>
    <xsl:variable name="gotColl" select="collection('xml/?select=*.xml')"/>
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(0, 450)">
                <text x="375" y="-540" text-anchor="middle">Comparison of Jon Stark and Daenerys Targaryen's Speeches throughout Season 8</text>
                <!-- Y-axis -->
                <line x1="20" x2="20" y1="0" y2="-450" stroke="black" stroke-width="1"/>
                <!-- X-axis -->
                <line x1="20" x2="750" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <!-- Y-axis Labels-->
                <text x="5" y="0" text-anchor="middle">0</text>
                <text x="5" y="-60" text-anchor="middle">10</text>
                <text x="5" y="-120" text-anchor="middle">20</text>
                <text x="5" y="-180" text-anchor="middle">30</text>
                <text x="5" y="-240" text-anchor="middle">40</text>
                <text x="5" y="-300" text-anchor="middle">50</text>
                <text x="5" y="-360" text-anchor="middle">60</text>
                <text x="5" y="-420" text-anchor="middle">70</text>
                
                <xsl:for-each select="$gotColl//Ep">
                    <xsl:sort select="@n" order="ascending"/>
                    <xsl:variable name="xpos" select="position() * $interval"/>
                    <xsl:variable name="ypos-j" select="count(descendant::speaker[@who = 'JON']) * 6"/>
                    <xsl:variable name="ypos-d" select="count(descendant::speaker[@who='DAENERYS']) * 6"/>
                    
                    <!-- amp: Datapoints for Jon -->
                    <circle cx="{$xpos}" cy="-{$ypos-j}" r="8" fill="#800000"  stroke="black"/>
                    <!-- amp: Datapoints for Daenerys -->
                    <circle cx="{$xpos}" cy="-{$ypos-d}" r="8" fill="#20B2AA"  stroke="black"/>
                    
                    <!-- amp: Point labels for Jon -->
                    <text x="{$xpos - 25}" y="{-$ypos-j}">
                        <xsl:value-of select="count(descendant::speaker[@who = 'JON'])"/>
                    </text> 
                    <!-- amp: Point labels for Daenerys -->
                    <text x="{$xpos - 25}" y="{-$ypos-d}">
                        <xsl:value-of select="count(descendant::speaker[@who='DAENERYS'])"/>
                    </text>
                    <!-- amp: X-Axis Labels -->
                    <text x="{$xpos}" y="20" text-anchor="middle">Ep. <xsl:value-of select="@n"/></text>
                    
                    
                    <!-- amp: Connecting Lines -->    
                    <xsl:if test="$gotColl//Ep[@n gt current()/@n]">
                        <xsl:variable name="xposNext" select="(position() + 1) * $interval"/>
                    <xsl:variable name="yposNext-j" select="count($gotColl//Ep[@n = current()/@n + 1]//speaker[@who='JON']) * 6"/>
                    <xsl:variable name="yposNext-d" select="count($gotColl//Ep[@n = current()/@n + 1]//speaker[@who='DAENERYS']) * 6"/>
                        
                        <line x1="{$xpos}" y1="-{$ypos-j}" x2="{$xposNext}" y2="-{$yposNext-j}" stroke="#800000" stroke-width="3"/>
                        <line x1="{$xpos}" y1="-{$ypos-d}" x2="{$xposNext}" y2="-{$yposNext-d}" stroke="#20B2AA" stroke-width="3"/>
                    </xsl:if>
                        
                    
                </xsl:for-each>
                <circle cx="800" cy="-205" r="8" fill="#800000" stroke="black"/>
                <circle cx="800" cy="-245" r="8" fill="#20B2AA" stroke="black"/>
<text x="820" y="-205" text-anchor="start">= Jon's Speeches</text>
<text x="820" y="-245" text-anchor="start">= Daenerys's Speeches</text>                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>