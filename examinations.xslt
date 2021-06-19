<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/micro_medical">
		<xsl:apply-templates select="patient[count(exam) > 1]" />
	</xsl:template>

	<xsl:template match="patient">
		<xsl:value-of select="id" />
		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

</xsl:stylesheet>