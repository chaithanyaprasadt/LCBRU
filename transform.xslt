<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/micro_medical">
		<xsl:call-template name="header" />
		<xsl:apply-templates select="patient" />
	</xsl:template>

	<xsl:template name="header">
		<xsl:text>"id",</xsl:text>
		<xsl:text>"gender",</xsl:text>
		<xsl:text>"dob",</xsl:text>
		<xsl:text>"age",</xsl:text>
		<xsl:text>"origin",</xsl:text>
		<xsl:text>"height",</xsl:text>
		<xsl:text>"weight",</xsl:text>
		<xsl:text>"bmi",</xsl:text>
		<xsl:text>"smoker",</xsl:text>
		<xsl:text>"dyspnoea score",</xsl:text>
		<xsl:text>"exam type",</xsl:text>
		<xsl:text>"exam new",</xsl:text>
		<xsl:text>"exam id",</xsl:text>
		<xsl:text>"exam date time",</xsl:text>
		<xsl:text>"notes",</xsl:text>
		<xsl:text>"reproducibility Test Title",</xsl:text>
		<xsl:text>"reproducibility stage",</xsl:text>
		<xsl:text>"reproducibility title",</xsl:text>
		<xsl:text>"reproducibility value",</xsl:text>
		<xsl:text>"interpretation stage",</xsl:text>
		<xsl:text>"interpretation title",</xsl:text>
		<xsl:text>"interpretation value",</xsl:text>
		<xsl:call-template name="header_test">
			<xsl:with-param name="test_number" select = "1" />
		</xsl:call-template>
		<xsl:call-template name="header_test">
			<xsl:with-param name="test_number" select = "2" />
		</xsl:call-template>
		<xsl:call-template name="header_test">
			<xsl:with-param name="test_number" select = "3" />
		</xsl:call-template>
		<xsl:call-template name="header_test">
			<xsl:with-param name="test_number" select = "4" />
		</xsl:call-template>
		<xsl:text>"spare"</xsl:text>
		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

	<xsl:template name="header_test">
		<xsl:param name = "test_number" />

		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'type title'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'type stage'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'type best test'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'type manual best'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'index'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'datetime'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'sensor type'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'excluded'" />
		</xsl:call-template>
		<xsl:call-template name="header_test_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="field_name" select = "'best criteria'" />
		</xsl:call-template>

  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'EVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'IVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV05'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV075'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV1'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV3'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV6'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'PEF'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV05_VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV05_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV05_FEV3'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV075_VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV075_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV075_FEV3'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV075_FEV6'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV1_VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV1_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV1_FEV6'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV3_VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEV3_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF25'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF50'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF75'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF25_75'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF25_75_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF25_75_FEV3'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF50_VC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FEF50_FVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'MVV_ind'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIV05'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIV1'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIV3'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'PIF'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIV05_FIVC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIR'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIF25'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIF50'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FIF75'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'R50'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FET'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FET2575'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TV'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'ERV'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'IRV'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'IC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FRC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'RV'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TLC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FR'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TI'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TE'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'VE'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'FRC_TLC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'RV_TLC'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'EV'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TV_TI'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'TI_TTOT'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'Quality'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'Lung Age'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'Start Time'"/>
  </xsl:call-template>
  <xsl:call-template name="header_result">
    <xsl:with-param name="test_number" select="$test_number"/>
    <xsl:with-param name="result_type" select="'Variation'"/>
  </xsl:call-template>

	</xsl:template>

	<xsl:template match="test" >
		<xsl:apply-templates select="test_type/test_title" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="test_type/stage" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="test_type/best_test" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="test_type/manual_best" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="index" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="date_time" mode="datetime" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="sensor_type" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="excluded" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="best_criteria" mode="string" />
		<xsl:text>,</xsl:text>

  <xsl:choose>
    <xsl:when test="result[title='VC']">
      <xsl:apply-templates select="result[title='VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='EVC']">
      <xsl:apply-templates select="result[title='EVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='IVC']">
      <xsl:apply-templates select="result[title='IVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV05']">
      <xsl:apply-templates select="result[title='FEV05']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV075']">
      <xsl:apply-templates select="result[title='FEV075']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV1']">
      <xsl:apply-templates select="result[title='FEV1']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV3']">
      <xsl:apply-templates select="result[title='FEV3']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV6']">
      <xsl:apply-templates select="result[title='FEV6']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FVC']">
      <xsl:apply-templates select="result[title='FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='PEF']">
      <xsl:apply-templates select="result[title='PEF']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV05_VC']">
      <xsl:apply-templates select="result[title='FEV05_VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV05_FVC']">
      <xsl:apply-templates select="result[title='FEV05_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV05_FEV3']">
      <xsl:apply-templates select="result[title='FEV05_FEV3']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV075_VC']">
      <xsl:apply-templates select="result[title='FEV075_VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV075_FVC']">
      <xsl:apply-templates select="result[title='FEV075_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV075_FEV3']">
      <xsl:apply-templates select="result[title='FEV075_FEV3']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV075_FEV6']">
      <xsl:apply-templates select="result[title='FEV075_FEV6']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV1_VC']">
      <xsl:apply-templates select="result[title='FEV1_VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV1_FVC']">
      <xsl:apply-templates select="result[title='FEV1_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV1_FEV6']">
      <xsl:apply-templates select="result[title='FEV1_FEV6']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV3_VC']">
      <xsl:apply-templates select="result[title='FEV3_VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEV3_FVC']">
      <xsl:apply-templates select="result[title='FEV3_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF25']">
      <xsl:apply-templates select="result[title='FEF25']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF50']">
      <xsl:apply-templates select="result[title='FEF50']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF75']">
      <xsl:apply-templates select="result[title='FEF75']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF25_75']">
      <xsl:apply-templates select="result[title='FEF25_75']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF25_75_FVC']">
      <xsl:apply-templates select="result[title='FEF25_75_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF25_75_FEV3']">
      <xsl:apply-templates select="result[title='FEF25_75_FEV3']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF50_VC']">
      <xsl:apply-templates select="result[title='FEF50_VC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FEF50_FVC']">
      <xsl:apply-templates select="result[title='FEF50_FVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='MVV_ind']">
      <xsl:apply-templates select="result[title='MVV_ind']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIV05']">
      <xsl:apply-templates select="result[title='FIV05']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIV1']">
      <xsl:apply-templates select="result[title='FIV1']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIV3']">
      <xsl:apply-templates select="result[title='FIV3']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIVC']">
      <xsl:apply-templates select="result[title='FIVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='PIF']">
      <xsl:apply-templates select="result[title='PIF']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIV05_FIVC']">
      <xsl:apply-templates select="result[title='FIV05_FIVC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIR']">
      <xsl:apply-templates select="result[title='FIR']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIF25']">
      <xsl:apply-templates select="result[title='FIF25']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIF50']">
      <xsl:apply-templates select="result[title='FIF50']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FIF75']">
      <xsl:apply-templates select="result[title='FIF75']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='R50']">
      <xsl:apply-templates select="result[title='R50']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FET']">
      <xsl:apply-templates select="result[title='FET']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FET2575']">
      <xsl:apply-templates select="result[title='FET2575']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TV']">
      <xsl:apply-templates select="result[title='TV']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='ERV']">
      <xsl:apply-templates select="result[title='ERV']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='IRV']">
      <xsl:apply-templates select="result[title='IRV']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='IC']">
      <xsl:apply-templates select="result[title='IC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FRC']">
      <xsl:apply-templates select="result[title='FRC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='RV']">
      <xsl:apply-templates select="result[title='RV']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TLC']">
      <xsl:apply-templates select="result[title='TLC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FR']">
      <xsl:apply-templates select="result[title='FR']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TI']">
      <xsl:apply-templates select="result[title='TI']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TE']">
      <xsl:apply-templates select="result[title='TE']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='VE']">
      <xsl:apply-templates select="result[title='VE']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='FRC_TLC']">
      <xsl:apply-templates select="result[title='FRC_TLC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='RV_TLC']">
      <xsl:apply-templates select="result[title='RV_TLC']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='EV']">
      <xsl:apply-templates select="result[title='EV']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TV_TI']">
      <xsl:apply-templates select="result[title='TV_TI']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='TI_TTOT']">
      <xsl:apply-templates select="result[title='TI_TTOT']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='Quality']">
      <xsl:apply-templates select="result[title='Quality']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='Lung Age']">
      <xsl:apply-templates select="result[title='Lung Age']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='Start Time']">
      <xsl:apply-templates select="result[title='Start Time']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
    <xsl:when test="result[title='Variation']">
      <xsl:apply-templates select="result[title='Variation']"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="EmptyTestResult"/>
    </xsl:otherwise>
  </xsl:choose>


	</xsl:template>

	<xsl:template match="patient">
		<xsl:apply-templates select="id" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="gender" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="dob" mode="date" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="age" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="origin" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="height" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="weight" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="bmi" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="smoker" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="dyspnoea_score" mode="numeric" />
		<xsl:text>,</xsl:text>

		<xsl:apply-templates select="exam[position() = 1]" />

		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

	<xsl:template match="exam" >
		<xsl:apply-templates select="type" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="new" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="exam_id" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="date_time" mode="datetime" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="notes" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="reproducibility/test_title" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="reproducibility/stage" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="reproducibility/reproducibility_title" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="reproducibility/reproducibility_value" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/stage" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/title" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/value" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="test[position() = 1]"/>
		<xsl:apply-templates select="test[position() = 2]"/>
		<xsl:apply-templates select="test[position() = 3]"/>
		<xsl:apply-templates select="test[position() = 4]"/>
	</xsl:template>

	<xsl:template match="result" >
		<xsl:apply-templates select="value" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="unit_symbol" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="predicted_value" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="predicted_value_min" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="predicted_value_max" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="z_score" mode="numeric" />
		<xsl:text>,</xsl:text>
	</xsl:template>

	<xsl:template name="EmptyTestResult" >
		<xsl:text>,</xsl:text>
		<xsl:text>,</xsl:text>
		<xsl:text>,</xsl:text>
		<xsl:text>,</xsl:text>
		<xsl:text>,</xsl:text>
		<xsl:text>,</xsl:text>
	</xsl:template>

	<xsl:template match="*" mode="numeric" >
		<xsl:value-of select="text()" />
	</xsl:template>

	<xsl:template match="*" mode="string" >
		<xsl:text>"</xsl:text>
		<xsl:value-of select="text()" />
		<xsl:text>"</xsl:text>
	</xsl:template>

	<xsl:template match="*" mode="date" >
		<xsl:text>"</xsl:text>
		<xsl:value-of select="year" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="month" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="day" />
		<xsl:text>"</xsl:text>
	</xsl:template>

	<xsl:template match="*" mode="datetime" >
		<xsl:text>"</xsl:text>
		<xsl:value-of select="year" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="month" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="day" />
		<xsl:text> </xsl:text>
		<xsl:value-of select="hour" />
		<xsl:text>:</xsl:text>
		<xsl:value-of select="minute" />
		<xsl:text>:</xsl:text>
		<xsl:value-of select="second" />
		<xsl:text>"</xsl:text>
	</xsl:template>

	<xsl:template name="header_result">
		<xsl:param name = "test_number" />
		<xsl:param name = "result_type" />

		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'value'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'unit symbol'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value min'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value max'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'z score'" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="header_test_field">
		<xsl:param name = "test_number" />
		<xsl:param name = "field_name" />

		<xsl:text>"test </xsl:text>
		<xsl:value-of select="$test_number"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$field_name"/>
		<xsl:text>",</xsl:text>
	</xsl:template>

	<xsl:template name="header_result_field">
		<xsl:param name = "test_number" />
		<xsl:param name = "result_type" />
		<xsl:param name = "field_name" />

		<xsl:text>"test </xsl:text>
		<xsl:value-of select="$test_number"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$result_type"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$field_name"/>
		<xsl:text>",</xsl:text>
	</xsl:template>

</xsl:stylesheet>