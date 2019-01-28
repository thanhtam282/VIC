<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="owl-carousel owl-theme wrapper-img">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="item" data-aos="fade-up" data-aos-delay="200">
                 <xsl:attribute name='data-aos-delay'>
            <xsl:value-of select='position()*200 - 200'></xsl:value-of>
            </xsl:attribute>
        <figure  >
                <img class="img-fluid">
                <xsl:attribute name='src'>
                    <xsl:value-of select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='alt'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                </img>
                <figcaption>
                    <h4><xsl:value-of select='Title'></xsl:value-of></h4>
                    <a class="btn btn-more" href="/du-an">
                        <xsl:value-of select='/NewsList/ViewMoreText'></xsl:value-of>
                    </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>