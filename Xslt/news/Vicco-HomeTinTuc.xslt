<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="row">
            <div class="col">
                <h4 class="head-title" data-aos="fade-down">
                    <xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
                </h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="owl-carousel owl-theme wrapper-img">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="item">
        <figure data-aos="fade-left" data-aos-delay="200" >
                    <xsl:attribute name='data-aos-delay'>
            <xsl:value-of select='position()*200 - 200'></xsl:value-of>
            </xsl:attribute>
                <a>
                    <xsl:attribute name='href'>
                        <xsl:value-of select='Url'></xsl:value-of>
                    </xsl:attribute>
                    <div class="box-zoom">
                        <img class="img-fluid">
                        <xsl:attribute name='src'>
                            <xsl:value-of select='ImageUrl'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='alt'>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                </a>
                <figcaption>
                    <h4>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </h4>
                    <xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
                    <div class="show-more">
                        <time>
                            <em class="mdi mdi-calendar-text"></em>
                            <xsl:value-of select='CreatedDate'></xsl:value-of>
                        </time>
                        <a>
                            <xsl:attribute name='href'>
                                <xsl:value-of select='Url'></xsl:value-of>
                            </xsl:attribute>
                            <em class="mdi mdi-arrow-right"></em>
                        </a>
                    </div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>