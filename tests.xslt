<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/micro_medical">
		<xsl:apply-templates select="patient" />
	</xsl:template>

	<xsl:template match="patient">
		<xsl:apply-templates select="exam" />
		<xsl:text>: </xsl:text>
		<xsl:value-of select="id" />
		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

	<xsl:template match="exam">
		<xsl:value-of select="count(test[result[title='Quality'][value='7']])" />
	</xsl:template>
<!--
	<xsl:template match="exam">
		<xsl:value-of select="position()" />
		<xsl:text>(</xsl:text>
		<xsl:value-of select="count(test[result[title='Quality'][value='7']][result[title='Variation'][value='' or number(value) > number('-5')]])" />
		<xsl:text> - </xsl:text>
		<xsl:value-of select="count(test[test_type/composite_test='true'])" />
		<xsl:text>)</xsl:text>
	</xsl:template>
-->
</xsl:stylesheet>