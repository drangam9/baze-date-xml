<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
                <xsl:element name="a">
                        <xsl:attribute name="href">
                                    <xsl:value-of select="root/link/address"/>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:value-of select="root/link/target"/>
                                </xsl:attribute>
                                <xsl:element name="i">
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="root/link/icon"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <xsl:value-of select="root/link/link_text"/>
                </xsl:element>
    </xsl:template>
</xsl:stylesheet>