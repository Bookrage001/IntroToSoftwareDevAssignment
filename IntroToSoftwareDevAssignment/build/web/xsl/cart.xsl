<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet 
    xmlns:ns="http://uts/wsd/oms"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="emailError"/>
    <xsl:param name="firstNameError"/>
    <xsl:param name="lastNameError"/>
    <xsl:template match="/">
        <html>
            <head>
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
                <meta http-equiv="Pragma" content="no-cache" />
                <meta http-equiv="Expires" content="-1" />
            </head>
            <body>
                <form action="checkoutAction.jsp" method="Post">
                    <xsl:apply-templates/>
                    <input type="submit" name="cancelOrder" value="Cancel Order">
                        <xsl:if test="count(ns:order/ns:movies/ns:movie) &lt; 1">
                            <xsl:attribute name="disabled"/>
                        </xsl:if>
                    </input>
                    <input type="submit" name="placeOrder" value="Place Order">
                        <xsl:if test="count(ns:order/ns:movies/ns:movie) &lt; 1">
                            <xsl:attribute name="disabled"/>
                        </xsl:if>
                    </input>
                </form>
            </body>
        </html>
    </xsl:template>
    
    
    <xsl:template match="ns:order">
        <xsl:apply-templates select="ns:orderID"/>
        <xsl:apply-templates select="ns:movies"/>
        <table class="CartDetails">
            <tr>
                <td>
                    <label for="saleTotal">Sale Total:</label>
                </td>
                <td>
                    <xsl:if test="ns:saleTotal">
                        $<xsl:value-of select="format-number(ns:saleTotal, '0.00')"/>
                    </xsl:if>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="firstName">First Name:</label>
                </td>
                <td>
                    <input type="text" name="firstName" value='{ns:firstName}'/>
                </td>
                <xsl:if test="$firstNameError = 'true'">
                    <td class="validation">First Name Required</td>
                </xsl:if>
            </tr>
            <tr>
                <td>
                    <label for="lastName">Last Name:</label>
                </td>
                <td>
                    <input type="text" name="lastName" value='{ns:lastName}'/>
                </td>
                <xsl:if test="$lastNameError = 'true'">
                    <td class="validation">Last Name Required</td>
                </xsl:if>
            </tr>
            <tr>
                <td>
                    <label for="email">Email</label>
                </td>
                <td>
                    <input type="email" name="email" value='{ns:email}'/>
                </td>
                <xsl:if test="$emailError = 'true'">
                    <td class="validation">Email Required</td>
                </xsl:if>
            </tr>
            <tr>
                <td>
                    <label for="paymentMethod">Payment Method:</label>
                </td>
                <td> 
                    <select name="paymentMethod">
                        <option value="Visa">
                            <xsl:if test="ns:paymentMethod='Visa'">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            Visa
                        </option>
                        <option value="Mastercard">
                            <xsl:if test="ns:paymentMethod = 'Mastercard'">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            Mastercard
                        </option>
                        <option value="Paypal">
                            <xsl:if test="ns:paymentMethod = 'Paypal'">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            Paypal
                        </option>
                    </select> 
                </td>
            </tr>
        </table>
    </xsl:template>
    
    <xsl:template match="ns:orderID">
        <h3 align="center">Order: <xsl:apply-templates/></h3>
    </xsl:template>
    
    <xsl:template match="ns:movies">
        <table width="100%" class="OrdersTable">
            <thead>
                <tr>
                    <th width="19%">Title</th>
                    <th width="19%">Genre</th>
                    <th width="19%">Release Date</th>
                    <th width="19%">Price</th>
                    <th width="19%">Amount</th>
                    <th width="5%">Remove</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates/>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="ns:movie">
        <tr>
            <td>
                <xsl:value-of select="ns:title"/>
            </td>
            <td>
                <xsl:value-of select="ns:genre"/>
            </td>
            <td>
                <xsl:value-of select="ns:releaseDate"/>
            </td>
            <td>$<xsl:value-of select="ns:price"/></td>
            <td>
                <xsl:value-of select="ns:copies"/>
            </td>
            <td>
                <input type="submit" name="remove_{ns:title}_{ns:releaseDate}" class="material-icons" value="delete" />
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>