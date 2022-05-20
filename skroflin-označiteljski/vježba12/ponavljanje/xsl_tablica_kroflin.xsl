<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Moja knjižnica</h2> 
<table border="1"> 
<tr bgcolor="cyan"> 
    <td align="left">Prezime</td> 
    <td align="left">Ime</td>
    <td align="left">Kategorija</td>
    <td align="left">Ocjena</td>
    <td align="left">Naslov</td>
</tr>
<xsl:for-each select="popis_knjiga/djelo">
<xsl:sort select="naslov"/>
<tr> 
<td> <b><xsl:value-of select="prezime"/></b> </td> 
<td> <b><xsl:value-of select="ime"/></b>  </td>
<td bgcolor="lightblue"> <xsl:value-of select="kategorija/@vrsta"/> </td>
<td> <xsl:value-of select="ocjena/@broj"/> </td>
<td bgcolor="darkblue"> <i><xsl:value-of select="naslov"/></i> </td>
 </tr>
 </xsl:for-each> 
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>