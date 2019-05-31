<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <div class="movie-area">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="movie">
        <div style="padding:20px">
            <img class="movieimg">
                <xsl:attribute name="src">
                    <xsl:value-of select="poster"/>
                </xsl:attribute>
            </img>
            <div align="center">
                <xsl:value-of select="title"/>
                <div class="Moviebtncontainer" style="text-align:center">
                    $                    <xsl:value-of select="price"/>
                </div>
                <div>
                    <button onclick=(); class="fa fa-cart-plus"> Add to Cart</button>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>