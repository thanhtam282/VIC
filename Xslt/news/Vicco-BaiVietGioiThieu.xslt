<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="Zone">
        <xsl:if test="position() = 1 ">
            <section class="canhcam-intro-2" bg-img="Data/Sites/1/skins/default/img/02_intro/intro_banner_2.png">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>


        <xsl:if test="position() = 2 ">
            <section class="canhcam-intro-3">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>

    </xsl:template>

    <xsl:template match='News' mode="ZoneNews1">
        <div class="col-md-6 col-lg-3 feature">
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
                    <h2>
                        <xsl:value-of select='Title' disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </figcaption>
            </figure>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews2">
        <div class="wrapper">
            <div class="banner-info-wrapper">
                <div class="banner">
                <xsl:attribute name='bg-img'>
                    <xsl:value-of select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                </div>
            </div>
            <div class="content">
                <div class="banner" bg-img="Data/Sites/1/skins/default/img/02_intro/intro_bg_1.png">
                </div>
                <div class="spec-info">
                    <h4 class="head-title">
                        <xsl:value-of select='Title'></xsl:value-of>
                    </h4>
                    <xsl:value-of select='FullContent' disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>