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
			<xsl:text>result[title='</xsl:text>
			<xsl:value-of select="title" />
			<xsl:text>']</xsl:text>
		</xsl:variable>

      <x_choose>
        <x_when test="{$ResultNode}">
	   		<x_apply-templates select="{$ResultNode}" />
        </x_when>
        <x_otherwise>
	   		<x_call-template name="EmptyTestResult" />
        </x_otherwise>
      </x_choose>
	</xsl:template>

</xsl:stylesheet>