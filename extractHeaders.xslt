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
		<x_call-template name="header_result">
			<x_with-param name="test_number" select = "$test_number" />
			<x_with-param name="result_type">
				  <xsl:attribute name="select">
				  	<xsl:text>'</xsl:text>
				    <xsl:value-of select="title" />
				  	<xsl:text>'</xsl:text>
				  </xsl:attribute>
			</x_with-param>
		</x_call-template>
	</xsl:template>

	<xsl:template match="result[predicted_value]" >
		<x_call-template name="header_result_with_prediction">
			<x_with-param name="test_number" select = "$test_number" />
			<x_with-param name="result_type">
				  <xsl:attribute name="select">
				  	<xsl:text>'</xsl:text>
				    <xsl:value-of select="title" />
				  	<xsl:text>'</xsl:text>
				  </xsl:attribute>
			</x_with-param>
		</x_call-template>
	</xsl:template>

	<xsl:template match="result[z_score]" >
		<x_call-template name="header_result_with_prediction_and_z">
			<x_with-param name="test_number" select = "$test_number" />
			<x_with-param name="result_type">
				  <xsl:attribute name="select">
				  	<xsl:text>'</xsl:text>
				    <xsl:value-of select="title" />
				  	<xsl:text>'</xsl:text>
				  </xsl:attribute>
			</x_with-param>
		</x_call-template>
	</xsl:template>

</xsl:stylesheet>