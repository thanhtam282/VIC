<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="canhcam-product-detail-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="news-image">
                            <div class="list-items-main">
                                <xsl:apply-templates select='/NewsDetail/NewsImages' mode="BigThumbnail"></xsl:apply-templates>
                            </div>
                            <div class="list-items-sub">
                                <xsl:apply-templates select='/NewsDetail/NewsImages' mode="SmallThumbnail"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="full-content">
                            <h2 class="head-title">
                                <xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
                                <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
                            </h2>
                            <xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="canhcam-product-detail-2">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <xsl:apply-templates select='/NewsDetail/NewsAttributes' mode="Nav"></xsl:apply-templates>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="canhcam-product-detail-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="tab-content" id="myTabContent">
                            <xsl:apply-templates select='/NewsDetail/NewsAttributes' mode="Content"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="canhcam-product-detail-3">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h3 class="head-title">
                            <xsl:value-of select='/NewsDetail/RelatedProductText'></xsl:value-of>
                        </h3>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>


    <xsl:template match='NewsImages' mode="BigThumbnail">
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

    <xsl:template match='NewsImages' mode="SmallThumbnail">
        <div class="item">
            <figure class="p-0">
                <img>
                <xsl:attribute name='src'>
                    <xsl:value-of select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='alt'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                </img>
            </figure>
        </div>
    </xsl:template>

    <xsl:template match='NewsAttributes' mode="Nav">
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab">
                <xsl:if test="position() = 1">
                    <xsl:attribute name='class'>
                        <xsl:text>nav-link active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name='class'>
                        <xsl:text>nav-link active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:attribute name='href'>
                    <xsl:text>#tab-</xsl:text>
                    <xsl:value-of select='position()'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='target'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select='Title'></xsl:value-of>
            </a>
        </li>
    </xsl:template>

    <xsl:template match='NewsAttributes' mode="Content">
        <div class="tab-pane fade">
            <xsl:if test="position() = 1">
                <xsl:attribute name='class'>
                    <xsl:text>tab-pane fade show active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name='id'>
                <xsl:text>tab-</xsl:text>
                <xsl:value-of select='position()'></xsl:value-of>
            </xsl:attribute>
            <div class="detail">
                <xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='NewsOther'>
        <div class="col-lg-4">
            <a>
                <xsl:attribute name='href'>
                    <xsl:value-of select='Url'></xsl:value-of>
                </xsl:attribute>
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
                        <h4>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </h4>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>

</xsl:stylesheet>