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
       
      
    </xsl:template>
</xsl:stylesheet>
