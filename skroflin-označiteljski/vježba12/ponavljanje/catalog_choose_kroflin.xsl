<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> <body> <h2>Moja knjižnica</h2> 
<table border="1"> 
<tr bgcolor="lightgreen">
    <td align="left">Naslov</td>
    <td align="left">Autor</td> 
    <td align="left">Kategorija</td>
    <td align="left">Ocjena</td></tr>
<xsl:for-each select="catalog/book">
<tr> <td><xsl:value-of select="naslov"/></td>
<xsl:choose> 
<xsl:when test="ocjena/@broj=5">
<td bgcolor="lightgreen"> 
<xsl:value-of select="ime_i_prezime"/>
</td> 
</xsl:when>
<xsl:otherwise>  
<td> <xsl:value-of select="ime_i_prezime"/>
</td>
</xsl:otherwise> 
</xsl:choose>
<td><xsl:value-of select="vrsta@naziv"/>  </td>
<td><xsl:value-of select="ocjena@broj"/>  </td>
</tr>
</xsl:for-each>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet> 