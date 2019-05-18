<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="Movies">
        <html>
            <head>
                <title>Movie Listing</title>
            </head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th>TITLE</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates />
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="movie">
        <tr>
            <td>
                <a href="movieDetail.jsp?id={@id}"><xsl:value-of select="title"/></a>
            </td>
            <td>
                <xsl:value-of select="price"/> AUD
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>