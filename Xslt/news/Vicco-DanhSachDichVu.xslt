<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="News">
        <div class="wrapper">
            <div class="banner-info-wrapper">
                <div class="banner">
                    <xsl:attribute name='bg-img'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                </div>
            </div>
            <div class="content">
                <div class="spec-info">
                    <h4 class="head-title">
                        <xsl:value-of select='Title'></xsl:value-of>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h4>
                    <xsl:value-of select='BriefContent' disable-output-escaping="yes"></xsl:value-of>
                    <a class="btn btn-more">
                        <xsl:attribute name='href'>
                            <xsl:value-of select='Url'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select='/NewsList/ViewMoreText'></xsl:value-of>
                    </a>

                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>