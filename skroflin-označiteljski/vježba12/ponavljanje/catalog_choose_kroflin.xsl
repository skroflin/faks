<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Moja knjiÅ¾nica</h2> 
<table border="1"> 
<tr bgcolor="#9acd32"> 
    <td align="left">Naslov</td> 
    <td align="left">Ime i Prezime</td> 
    <td align="left">Kategorija</td> 
    <td align="left">Ocjena</td>
</tr>
<xsl:for-each select="popis_knjiga/djelo">
<xsl:sort select="ime_i_prezime"/>
<!--<xsl:if test="ocjena/@broj=5"> -->
<!--<xsl:if test="vrsta/@naziv='fantasy'"> --> 
<tr> 
<td> <xsl:value-of select="naslov"/></td> 

<!--<td> <xsl:value-of select="ime_i_prezime"/>  </td> -->
<xsl:choose> 
<xsl:when test="ocjena/@broj=5"> 
<td bgcolor="#ff00ff"> 
<xsl:value-of select="ime_i_prezime"/> </td> 
</xsl:when> 
<xsl:when test="ocjena/@broj=4"> 
<td bgcolor="lightgray"> 
<xsl:value-of select="ime_i_prezime"/> </td> 
</xsl:when> 
<xsl:otherwise>  
<td> <xsl:value-of select="ime_i_prezime"/>  </td>
</xsl:otherwise> 
</xsl:choose>



<td> <xsl:value-of select="vrsta/@naziv"/> </td>
<td> <xsl:value-of select="ocjena/@broj"/> </td> </tr>
<!--</xsl:if>-->
 </xsl:for-each> 
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>
