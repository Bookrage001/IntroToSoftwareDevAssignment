<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <div class="movie-area">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="movie">
        <div>
            <div class="price">
                <xsl:value-of select="price"/>
            </div>
            <img class="movieimg">
                <xsl:attribute name="src">
                    <xsl:value-of select="poster"/>
                </xsl:attribute>
            </img>
            <div align="center">
                <xsl:value-of select="title"/>

                <div class="Moviebtncontainer">
                    <div class="MovieAddbtn">
                        <img src="Images/Cart.png"/>
                    </div>
                    <div>
                        <button class="MovieDetailsbtn">More Details</button>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>