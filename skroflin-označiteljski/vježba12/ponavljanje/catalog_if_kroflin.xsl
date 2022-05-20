<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Moja knjižnica</h2> 
<table border="1"> 
<tr bgcolor="#9acd32">
    <td align="left">Naslov</td>
    <td align="left">Ime i prezime</td>
    <td align="left">Kategorija</td>
    <td align="left">Ocjena</td> </tr>
<xsl:for-each select="popis_knjiga/djelo">
<xsl:if test="ocjena/@broj=5"> 
<tr> 
<td> <xsl:value-of select="naslov"/></td> 
<td> <xsl:value-of select="ime_i_prezime"/>  </td>
<td> <xsl:value-of select="vrsta/@naziv"/> </td>
<td> <xsl:value-of select="ocjena/@broj"/> </td> </tr>
</xsl:if>
 </xsl:for-each> 
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet> 
