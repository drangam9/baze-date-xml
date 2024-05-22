<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">       
    	<xsl:element name="img">
    		<xsl:attribute name="width">
    			<xsl:value-of select="/root/Image/img/@width"/>
    		</xsl:attribute>
    		<xsl:attribute name="height">
    			<xsl:value-of select="/root/Image/img/@height"/>
    		</xsl:attribute>
    		<xsl:attribute name="class">
    			<xsl:value-of select="/root/Image/img/@class"/>
    		</xsl:attribute>
    		<xsl:attribute name="src">
    			<xsl:value-of select="/root/Image/img/@src"/>
    		</xsl:attribute>
    	</xsl:element>
    </xsl:template>

</xsl:stylesheet>