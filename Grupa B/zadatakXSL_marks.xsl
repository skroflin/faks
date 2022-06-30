<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html> <body> <h2>Popis studenata</h2> 
<table border="1">

<tr bgcolor="lightgreen">
    <td align="left">Ime</td>
    <td align="left">Smjer studija</td>
    <td align="left">Akademska godina upisa na studij</td>
    <td align="left">Prosječna ocjena na prvoj godini studija</td>
</tr>

<xsl:for-each select="studenti/podaci_o_studentu">
<xsl:sort select="smjer_studija"/>
<!--<xsl:if test="smjer_studija/@studij='informatologija'">-->
<tr>

<td><xsl:value-of select="ime_i_prezime_studenta/ime"/></td> 
<td><xsl:value-of select="smjer_studija"/></td> 
<td><xsl:value-of select="akademska_godina_upisa"/></td> 

<xsl:choose>
<xsl:when test="prosjecna_ocjena/@ocjena='izvrstan'">
<td bgcolor="lightblue">
<xsl:value-of select="prosjecna_ocjena/@ocjena"/>
</td>
</xsl:when>
<xsl:when test="prosjecna_ocjena/@ocjena='vrlodobar'">
<td bgcolor="pink">
<xsl:value-of select="prosjecna_ocjena/@ocjena"/>
</td>
</xsl:when>
</xsl:choose>
<!--</xsl:if>-->
</tr>
  </xsl:for-each>
</table> </body> </html> 
</xsl:template>
</xsl:stylesheet>