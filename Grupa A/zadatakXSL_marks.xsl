<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Popis korisnika knjižnice:</h2> 
<table border="1">

<tr bgcolor="orange">
    <td align="left">Ulica i broj</td>
    <td align="left">Grad u kojem stanuje</td>
    <td align="left">Datum rođenja</td>
    <td align="left">Korisnik knjižnice</td>
</tr>

<xsl:for-each select="korisnik_knjižnice/korisnik">
<xsl:sort select="ulica"/>
<!--<xsl:if test="mjesto_prebivališta/@grad='Osijek'"-->

<tr>

<td> <xsl:value-of select="ulica"/>  </td>
<td> <xsl:value-of select="mjesto_prebivališta/@grad"/> </td>
<td> <xsl:value-of select="datum_rođenja"/> </td>

<xsl:choose>
<xsl:when test="mjesto_prebivališta/@grad='Osijek'">
<td bgcolor="lightgreen"> 
<xsl:value-of select="ime_i_prezime"/> </td>
</xsl:when>
<xsl:when test="mjesto_prebivališta/@grad='Vinkovci'">
<td bgcolor="lightblue"> 
<xsl:value-of select="ime_i_prezime"/> </td>
</xsl:when>
<xsl:when test="mjesto_prebivališta/@grad='Valpovo'">
<td bgcolor="lightblue"> 
<xsl:value-of select="ime_i_prezime"/> </td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="ime_i_prezime"></td>
</xsl:otherwise>
</xsl:choose>
<!--</xsl:if>-->
<!--<td> <xsl:value-of select="ulica"/>  </td>
<td> <xsl:value-of select="mjesto_prebivališta/@grad"/> </td>
<td> <xsl:value-of select="datum_rođenja"/> </td>-->

</tr>
  </xsl:for-each>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>