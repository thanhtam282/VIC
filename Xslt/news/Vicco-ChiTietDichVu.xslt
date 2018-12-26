<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="canhcam-service-detail-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="main-news">
                            <h1 class="head-title">
                                <xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
                                <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
                            </h1>
                            <xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="other-news" data-fix="80" data-fix-type="initial" data-fix-change="sticky">
                            <h2 class="head-title">
                                <xsl:value-of select='/NewsDetail/ServicesOtherText'></xsl:value-of>
                            </h2>
                            <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='NewsOther'>
        <a>
            <xsl:attribute name='href'>
                <xsl:value-of select='Url'></xsl:value-of>
            </xsl:attribute>
            <figure>
                <div class="img">
                <img class="img-fluid">
                    <xsl:attribute name='src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                </img>
                </div>

                <figcaption>
                    <h3>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </h3>
                </figcaption>
            </figure>
        </a>
    </xsl:template>
</xsl:stylesheet>