<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="banner-info-wrapper">
            <div class="banner" bg-img="/Data/Sites/1/skins/default/img/home/home_bg_1.png"></div>
            <div class="spec-info">
                <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <figure>
            <img>
            <xsl:attribute name='src'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='alt'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            </img>
            <figcaption>
                <h4>
                    <xsl:value-of select='Title' disable-output-escaping='yes'></xsl:value-of>
                </h4>
            </figcaption>
        </figure>

    </xsl:template>
</xsl:stylesheet>