<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg">

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <body>
            <br/>
                <h1>SVG Graphic</h1>
                <xsl:apply-templates select="svg:svg"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="svg:svg">
        <div style="border:1px solid #000; width:{@width}px; height:{@height}px; position:relative;">
            <xsl:apply-templates select="svg:*"/>
        </div>
    </xsl:template>
    
      <xsl:template match="svg:circle">
        <div style="width:{@r*2}px; height:{@r*2}px; background-color:{@fill}; border-radius:50%; position:absolute; top:{@cy - @r}px; left:{@cx - @r}px;">
        </div>
    </xsl:template>
    
    <xsl:template match="svg:rect">
        <div style="width:{@width}px; height:{@height}px; background-color:{@fill}; position:absolute; top:{@y}px; left:{@x}px;">
        </div>
    </xsl:template>

</xsl:stylesheet>
