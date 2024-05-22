<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:math="http://www.w3.org/1998/Math/MathML">
    
    <xsl:template match="/">
        <html>
            <body>
                <xsl:element name="svg">
                    <xsl:attribute name="xlmns">
                        <xsl:value-of select="/math/svg"/>
                    </xsl:attribute>
    	        </xsl:element>
                <xsl:apply-templates select="math:math"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="math:math">
        <div>
            <xsl:apply-templates select="math:mrow"/>
        </div>
    </xsl:template>

    <xsl:template match="math:mrow">
        <xsl:apply-templates select="math:*"/>
    </xsl:template>

    <xsl:template match="math:mi">
        <span style="font-style:italic;">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="math:mo">
        <span>
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="math:mn">
        <span>
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="math:msup">
        <span>
            <xsl:apply-templates select="math:*[1]"/>
            <sup>
                <xsl:apply-templates select="math:*[2]"/>
            </sup>
        </span>
    </xsl:template>

    <xsl:template match="math:msqrt">
        <span>
            √<xsl:apply-templates select="math:mrow"/>
        </span>
    </xsl:template>

    <xsl:template match="math:mfrac">
        <div style="display:inline-block; text-align:center;">
            <div>
                <xsl:apply-templates select="math:*[1]"/>
            </div>
            <div style="border-top:1px solid; margin-top:2px;">
                <xsl:apply-templates select="math:*[2]"/>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
