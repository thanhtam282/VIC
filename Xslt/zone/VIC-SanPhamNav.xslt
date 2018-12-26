<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="Zone">
        <section class="canhcam-product-2" bg-img="Data/Sites/1/skins/default/img/home/home_bg_2.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="full-content">
                            <h4 class="head-title">
                                <xsl:value-of select='Title'></xsl:value-of>
                            </h4>
                            <p>
                                <xsl:value-of select='Description'></xsl:value-of>
                            </p>
                            <a class="btn btn-more">
                                <xsl:attribute name='href'>
                                    <xsl:value-of select='Url'></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select='/ZoneList/ViewMoreText'></xsl:value-of>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <figure>
                            <img class="img-fluid">
                            <xsl:attribute name='src'>
                                <xsl:value-of select='ImageUrl'></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name='alt'>
                                <xsl:value-of select='Title'></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </figure>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>