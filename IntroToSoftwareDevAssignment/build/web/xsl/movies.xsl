<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:ns="http://uts/wsd/oms"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:param name="Title"/>
    <xsl:param name="Genre"/>
    <xsl:param name="StartYear"/>
    <xsl:param name="EndYear"/>
    <xsl:output method = "html" />
    <xsl:template match = "/">
        <html>
            <body>
                <div style="text-align:center">
                    <div style="width:10%"/>
                    <div align="center" style="width: 80%; display: inline-block" >
                        <form action="checkout.jsp"  method="Post">
                            <table id="movies" class="order">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Genre</th>
                                        <th>Release Date</th>
                                        <th>Price</th>
                                        <th>Available Copies</th>
                                    </tr>
                                </thead>
                                <xsl:apply-templates select="//ns:movies/ns:movie[ns:title=$Title]" />
                                <xsl:apply-templates select="//ns:movies/ns:movie[ns:genre=$Genre]" />
                                <xsl:apply-templates select="//ns:movies/ns:movie[ns:releaseDate &gt;= $StartYear and ns:releaseDate &lt;=$EndYear]" />
                            </table>
                            <button style="float:right;">Checkout</button>
                        </form>
                    </div>
                    <div style="width:10%"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ns:movie">
        <tr style="height: 50px; vertical-align: bottom; border: 1px solid;" >
            <td style="display:none;">
                <input name="Checkout_{ns:title}_{ns:releaseDate}" type="checkbox" id=""/>
            </td>
            <td align="center">
                <xsl:value-of select="ns:title" />
            </td>
            <td align="center">
                <xsl:value-of select="ns:genre"/>
            </td>
            <td align="center">
                <xsl:value-of select="ns:releaseDate"/>
            </td>
            <td align="center">
                $<xsl:value-of select="format-number(ns:price, '0.00')"/>
            </td>
            <td align="center">
                <xsl:value-of select="ns:copies"/>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
