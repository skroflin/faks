<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body>
    <h2>Knjižnica GISKO</h2> 
    <h3>Tekst: <xsl:value-of select="korisnik_knjižnice/korisnik/tekst"/> </h3>
<table border="1"> 
<tr bgcolor="orange">
    <td align="left">Korisnik knjižnice</td>
    <td align="left">Ullica i broj</td>
    <td align="left">Grad u kojem stanuje</td>
    <td align="left">Datum rođenja</td>
</tr>

<xsl:for-each select="korisnik_knjižnice/korisnik">
<!--<xsl:if test="mjesto_prebivališta/@grad='Osijek">-->

<xsl:sort select="ulica"/>
<tr>
<!--<xsl:value-of select="korisnik"/>-->

<xsl:choose> 
<xsl:when test="mjesto_prebivališta/@grad='Osijek">
<td bgcolor="lightgreen"> 
<xsl:value-of select="korisnik"/>
</td> 
</xsl:when>
<xsl:when test="mjesto_prebivališta/@grad='Valpovo'">
<td bgcolor="lightblue">
<xsl:value-of select="korisnik"/></td>
</xsl:when>
<xsl:when test="mjesto_prebivališta/@grad='Vinkovci'">
<td bgcolor="lightblue">
<xsl:value-of select="korisnik"/><td>
<xsl:otherwise>  
<td>
<xsl:value-of select="korisnik"/>
</td>
</xsl:otherwise> 
</xsl:choose>


<td> <xsl:value-of select="korisnik"/> </td>
<td> <xsl:value-of select="ulica"/>  </td>
<td> <xsl:value-of select="mjesto_prebivališta/@grad"/> </td>
<td> <xsl:value-of select="datum_rođenja"/> </td>
</tr>
<!--</xsl:if>-->

 </xsl:for-each>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>