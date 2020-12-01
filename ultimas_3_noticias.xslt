<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/rss/channel">



      <a href="{item[1]/link}"><img src="{item[1]/enclosure/@url}" width="80"></img>
      </a><xsl:value-of select="item[1]/title"/><br/>
      <i>
        <xsl:value-of select="item[1]/description"/>
      </i><br/>
      <b><xsl:value-of select="item[1]/pubDate"/>
      </b>
      <xsl:value-of select="item[1]/category"/><br/>

      <br/>
      <br/>
      <hr/>
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

      <br/>
      <br/>
      <hr/>
      <b>Imagem:</b>
      <img src="{item[3]/enclosure/@url}" width="110" height="90"></img>
      <br/>
      <b>Titulo:</b>
      <xsl:value-of select="item[3]/title"/>
      <br/>
      <b>Descrição:</b>
      <xsl:value-of select="item[3]/description"/>
      <br/>
      <b>Data:</b>
      <xsl:value-of select="item[3]/pubDate"/>
      <br/>
      <b>Categoria:</b>
      <xsl:value-of select="item[3]/category"/>
      <br/>
      <b>Link:</b>
      <xsl:value-of select="item[3]/link"/>
      <br/>
      
      
    </xsl:template>
</xsl:stylesheet>
