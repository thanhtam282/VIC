<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="dropdown">
            <xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="Language">
        <xsl:if test="IsActive='true'">
            <a class="dropdown-toggle" id="dropdownMenuLink" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <xsl:attribute name='href'>
                    <xsl:value-of select='Url'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='target'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select='Title'></xsl:value-of>
            </a>
        </xsl:if>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
            <xsl:apply-templates select="/LanguageList/Language" mode="Lang2"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Lang2">
        <a class="dropdown-item ml-0 text-center text-capitalize" href="javascript:void(0)">
        <xsl:if test="IsActive='true'">
            <xsl:attribute name='class'>
                <xsl:text>dropdown-item ml-0 text-center text-capitalize active</xsl:text>
            </xsl:attribute>
        </xsl:if>
            <xsl:attribute name='href'>
                <xsl:value-of select='Url'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='target'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select='Title'></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>