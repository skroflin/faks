<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body>
    <h2>Moja zbirka DVD-a</h2> 
    <h3>Autor: <xsl:value-of select="dvd_katalog/dvd/odabrao"/> </h3>
<table border="1"> 
<tr bgcolor="purple">
    <td align="left">Izdvođač</td>
    <td align="left">Naslov albuma</td>
    <td align="left">Vrsta glazbe</td>
    <td align="left">Godinja izdanja</td> </tr>
<xsl:for-each select="dvd_katalog/dvd">
<xsl:if test="izvođač='Joji'"> 
<tr> 

<!-- <xsl:sort select="izvođač"/> -->
<xsl:choose> 
<xsl:when test="vrsta_glazbe/@žanr='RnB'">
<td bgcolor="pink"> 
<xsl:value-of select="izvođač"/>
</td> 
</xsl:when> <xsl:otherwise>  
<td>
<xsl:value-of select="izvođač"/>
</td>
</xsl:otherwise> 
</xsl:choose>


<td> <xsl:value-of select="izvođač"/> </td> 
<td> <xsl:value-of select="naslov_albuma"/>  </td>
<td> <xsl:value-of select="vrsta_glazbe/@žanr"/> </td>
<td> <xsl:value-of select="godina_izdanja"/> </td>


 </tr>
</xsl:if>

 </xsl:for-each>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>