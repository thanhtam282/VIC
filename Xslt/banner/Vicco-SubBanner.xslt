<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="list-items">
            <xsl:apply-templates select='/BannerList/Banner'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="item">
        <img>
        <xsl:attribute name='src'>
            <xsl:value-of select='ImageUrl'></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name='alt'>
            <xsl:value-of select='Title'></xsl:value-of>
        </xsl:attribute>
        </img>
        </div>
    </xsl:template>
</xsl:stylesheet>