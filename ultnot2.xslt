<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/rss/channel">




      <b>Imagem:</b>
      <img src="{item[2]/enclosure/@url}" width="110" height="90"></img>
      <br/>
      <b>Titulo:</b>
      <xsl:value-of select="item[2]/title"/>
      <br/>
      <b>Descrição:</b>
      <xsl:value-of select="item[2]/description"/>
      <br/>
      <b>Data:</b>
      <xsl:value-of select="item[2]/pubDate"/>
      <br/>
      <b>Categoria:</b>
      <xsl:value-of select="item[2]/category"/>
      <br/>
      <b>Link:</b>
      <xsl:value-of select="item[2]/link"/>
      <br/>


      
      
    </xsl:template>
</xsl:stylesheet>
