<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Movie | <xsl:value-of select="/movie/title"/></title>
                <style>
                    table{
                        width: 95%;
                        margin-left:auto; 
                        margin-right:auto;
                        font-size: 130%;
                    }                            
                    tr, td{
                        padding: 15px;
                    }
                </style>
            </head>
            <body>                             
                <table>
                    <tr>
                        <td>
                            <xsl:apply-templates/>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
    
    
    
    <xsl:template match="movie">
        <table>
            <tr>
                <td class="name">Title:</td>
                <td>
                    <xsl:value-of select="title"/>
                </td>
            </tr>
            <tr>
                <td class="name">Genre:</td>
                <td>
                    <xsl:value-of select="genre"/>
                </td>
            </tr>
            <tr>
                <td class="name">Release Date:</td>
                <td>
                    <xsl:value-of select="releaseDate"/>
                </td>
            </tr>
            <tr>
                <td class="name">Price:</td>
                <td>
                    <xsl:value-of select="price"/>
                </td>
            </tr>
            <tr>
                <td class="name">Summary:</td>
                <td>
                    <xsl:value-of select="summary"/>
                </td>
            </tr>
        </table>
    </xsl:template>    
</xsl:stylesheet>