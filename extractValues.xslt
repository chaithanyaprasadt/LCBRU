<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/micro_medical">
		<x_transform>
			<xsl:apply-templates select="patient[position() = 1]" />
		</x_transform>
	</xsl:template>

	<xsl:template match="patient">
		<xsl:apply-templates select="exam" />
	</xsl:template>

	<xsl:template match="exam" >
		<xsl:apply-templates select="test[position() = 1]"/>
	</xsl:template>

	<xsl:template match="test" >
		<xsl:apply-templates select="result"/>
	</xsl:template>

	<xsl:template match="result">
		<xsl:variable name="ResultNode">
			<xsl:text>'</xsl:text>
			<xsl:value-of select="title" />
			<xsl:text>'</xsl:text>
		</xsl:variable>

		<x_call-template name="Result">
			<x_with-param name="test" select="$test"/>
			<x_with-param name="title" select="{$ResultNode}"/>
		</x_call-template>
	</xsl:template>

</xsl:stylesheet>