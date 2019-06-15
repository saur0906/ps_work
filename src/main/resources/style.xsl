<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="HTTP://WWW.W3.ORG/2001/XMLSCHEMA-INSTANCE" 
xmlns:fo="http://www.w3.org/1999/XSL/Format" >
<xsl:output method="text" omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="/">
er_date,er_num,m_no,m_work,c_data
<xsl:for-each select="er">
	<xsl:variable name="erDate" select="er_date"/>
	<xsl:variable name="erNum" select="er_num"/>
	<xsl:for-each select="member">
		<xsl:variable name="memNo" select="m_no"/>
		<xsl:variable name="memWork">
		<xsl:choose>
            <xsl:when test="not(m_work/@xsl:nil)">
                <xsl:value-of select="m_work" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>
		<xsl:for-each select="contribution">
			<xsl:variable name="contriData" select="c_data"/>
			<xsl:text><xsl:value-of select="normalize-space(concat($erDate,',',
			$erNum,',',$memNo,',',$memWork,',',$contriData))"/></xsl:text>
			<xsl:text>&#xa;</xsl:text>
		</xsl:for-each>
	</xsl:for-each>
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>