<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="content">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="item">
            <div class="name">
                <h2>
                    <xsl:value-of select='Title'></xsl:value-of>
                    <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                </h2>
            </div>
            <div class="introduce">
                <xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>