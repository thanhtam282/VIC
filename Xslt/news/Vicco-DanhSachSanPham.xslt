<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="col-lg-4 col-md-6">
            <div class="item">
                <figure>
                    <img>
                    <xsl:attribute name='src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                    <figcaption>
                        <a class="btn btn-more" >
                            <xsl:attribute name='href'>
                                <xsl:value-of select='Url'></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name='target'>
                                <xsl:value-of select='Title'></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select='/NewsList/ViewMoreText'></xsl:value-of>
                        </a>
                        <h3>
                            <xsl:value-of select='Title'></xsl:value-of>
                            <xsl:value-of select='EditLink' disable-output-escaping="yes"></xsl:value-of>
                        </h3>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>