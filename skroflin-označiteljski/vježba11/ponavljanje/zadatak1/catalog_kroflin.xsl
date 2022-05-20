<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Moja knjižnica</h2> 
<table border="1"> 
<tr bgcolor="magenta"> <td align="left">Naslov</td> <td align="left">Autor</td>
<td align="left">Kategorija</td> <td align="left">Ocjena</td></tr>
<tr> 
<td><xsl:value-of select="katalog_knjiga/knjiga/naslov"/></td> 
<td><xsl:value-of select="katalog_knjiga/knjiga/autor"/></td> 
<td><xsl:value-of select="katalog_knjiga/knjiga/žanr"/></td> 
<td><xsl:value-of select="katalog_knjiga/knjiga/ocjena/@broj"/></td>
 </tr>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet> 