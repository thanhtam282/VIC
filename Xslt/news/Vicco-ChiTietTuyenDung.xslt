<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="canhcam-recruitment-detail-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="main-job">
                            <h2>
                                <xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
                                <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
                            </h2>
                            <xsl:apply-templates select='/NewsDetail/NewsAttributes'></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="other-job">
                            <h2><xsl:value-of select='/NewsDetail/RecruitmentOtherText'></xsl:value-of></h2>
                            <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match='NewsAttributes'>
        <div class="block-req">
            <p>
                <xsl:value-of select='Title'></xsl:value-of>
            </p>
            <xsl:value-of select='Content' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>

    <xsl:template match='NewsOther'>
        <a>
            <xsl:attribute name='href'>
                <xsl:value-of select='Url'></xsl:value-of>
            </xsl:attribute>
            <p>
                <xsl:value-of select='Title'></xsl:value-of>
            </p>
        </a>
        <time>
            <xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
            <span>
                <xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
            </span>
        </time>
    </xsl:template>
</xsl:stylesheet>