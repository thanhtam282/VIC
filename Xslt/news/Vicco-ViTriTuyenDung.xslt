<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="row">
            <div class="col">
                <h2>
                    <xsl:value-of select='/NewsList/ModuleTitle'></xsl:value-of>
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Vị trí tuyển dụng</th>
                                <th>số lượng</th>
                                <th>khu vực</th>
                                <th>ngày hết hạn</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <tr>
            <td>
                <a>
                    <xsl:attribute name='href'>
                        <xsl:value-of select='Url'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select='Title'></xsl:value-of>
                </a>
                
            </td>
            <td>
                <xsl:value-of select='SubTitle'></xsl:value-of>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select='BriefContent'></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select='FullContent'></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>