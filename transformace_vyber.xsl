<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : transformace_foreach.xsl
    Created on : 22. dubna 2017, 19:26
    Author     : Vojta
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/databazeNastaveniUzivatelu">
        [
        <xsl:for-each select="nastaveni/zobrazeni[cela_obrazovka='true']">
                {
                    "iduzivatele": "<xsl:value-of select="../@iduzivatele"/>",
                    "country": "<xsl:value-of select="../@country"/>",
                    "uroven": "<xsl:value-of select="../@uroven"/>",
                    "avatar": "<xsl:value-of select="../@avatar"/>",
                    "iduzivatele": "<xsl:value-of select="../@iduzivatele"/>",
                    "cela_obrazovka": "<xsl:value-of select="../zobrazeni/cela_obrazovka"/>",
                    "jas": "<xsl:value-of select="../zobrazeni/jas"/>",
                    "rozliseni": "<xsl:value-of select="../zobrazeni/rozliseni"/>",
                    "obnovovaci_frekvence": "<xsl:value-of select="../zobrazeni/obnovovaci_frekvence"/>"
                }
                <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>

</xsl:stylesheet>
