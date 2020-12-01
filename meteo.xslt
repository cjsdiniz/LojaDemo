<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/report">
      Actualização em <xsl:value-of select="@creation-time"/>

      <h1>Lisboa</h1>
      <br/>
      <b>Céu:</b> <xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/currentWeather/symbolDesc"/>
      <br/>
      <b>Min:</b> <xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/temp/tempMin"/>
      <br/>
      <b>Max:</b> <xsl:value-of select="/report/forecast/land[@name = 'Lisboa']/landWeather/temp/tempMax"/>
      <br/>
      <b>Temperatura da água:</b> <xsl:value-of select="/report/forecast/sea[@name = 'Lisboa']/seaWeather/waterTemp"/>

      <br/>
      <h1>Porto</h1>
      <br/>
      <b>Céu:</b> <xsl:value-of select="/report/forecast/land[@name = 'Porto']/landWeather/currentWeather/symbolDesc"/>
      <br/>
      <b>Min:</b> <xsl:value-of select="/report/forecast/land[@name = 'Porto']/landWeather/temp/tempMin"/>
      <br/>
      <b>Max:</b> <xsl:value-of select="/report/forecast/land[@name = 'Porto']/landWeather/temp/tempMax"/>
      <br/>
      <b>Temperatura da água:</b> <xsl:value-of select="/report/forecast/sea[@name = 'Porto']/seaWeather/waterTemp"/>
    
    </xsl:template>
</xsl:stylesheet>
