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
                <xsl:attribute name='data-fancybox'>
                    <xsl:value-of select='position()'></xsl:value-of>
                </xsl:attribute>
                <div class="box-zoom">
                    <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
                </div>
            </div>

            <!-- <div class="wrapper-gallery" data-fancybox="0">
                <div class="box-zoom">
                    <a href="img/07_news_photo/news_photo_1.png">
                        <img src="img/07_news_photo/news_photo_1.png" alt="">
                    </a>
                    <a href="img/07_news_photo/news_photo_2.png">
                        <img src="img/07_news_photo/news_photo_2.png" alt="">
                    </a>
                    <a href="img/07_news_photo/news_photo_3.png">
                        <img src="img/07_news_photo/news_photo_3.png" alt="">
                    </a>
                    <a href="img/07_news_photo/news_photo_4.png">
                        <img src="img/07_news_photo/news_photo_4.png" alt="">
                    </a>
                </div>
            </div> -->
        </div>
    </xsl:template>

    <xsl:template match='NewsImages'>
        <a>
            <xsl:attribute name='href'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
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
    </xsl:template>
</xsl:stylesheet>