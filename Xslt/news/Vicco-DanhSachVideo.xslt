<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="wrapper-gallery">
                <div class="box-zoom">
                    <a data-fancybox="">
                        <xsl:attribute name='href'>
                            <xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
                        </xsl:attribute>
                        <img>
                        <xsl:attribute name='src'>
                            <xsl:value-of select='ImageUrl'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='alt'>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>