<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <h1 class="head-title">
            <xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
        </h1>
        <div class="wrapper-img">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="item">
            <figure>
                <img class="img-fluid">
                <xsl:attribute name='src'>
                    <xsl:value-of select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='alt'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                </img>
                <figcaption>
                    <div class="detail">
                        <h4>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </h4>
                        <div class="briefcontent">
                            <xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
                        </div>
                        <div class="fullcontent">
                            <xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
                        </div>
                    </div>
                    <a class="btn btn-more">
                        <xsl:value-of select='/NewsList/ViewMoreText'></xsl:value-of>
                    </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>