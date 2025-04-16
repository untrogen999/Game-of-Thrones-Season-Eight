<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:variable name="interval" select="60"/>
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(60, 575)">
                <text x="375" y="-550" text-anchor="middle">Quotes by Jon Snow in
               Episode 1 of Game of Thrones</text>
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
                <text x="60" y="15" text-anchor="middle">Jon Snow</text>
                <xsl:for-each select="Ep">
                    
                    <xsl:variable name="xpos" select="position() * $interval"/>
                    <xsl:variable name="ypos" select="count(descendant::speaker[@who = 'JON']) * 6"/>
                    
                    <circle cx="{$xpos}" cy="-{$ypos}" r="6" fill="red"/>
                    
                    <text x="{$xpos - 3}" y="{-$ypos - 30}">
                        <xsl:value-of select="count(descendant::speaker[@who = 'JON'])"/>
                    </text>                   
                </xsl:for-each>                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>