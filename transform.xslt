<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/micro_medical">
		<xsl:call-template name="header" />
		<xsl:apply-templates select="//test" />
	</xsl:template>

	<xsl:template name="header">
    <!-- Patient -->
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

    <!-- Exam -->
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'Exam ID'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'type'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'new'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'date time'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'notes'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'reproducibility Test Title'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'reproducibility stage'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'reproducibility title'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'reproducibility value'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'reproducibility message'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'interpretation stage'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'interpretation title'" />
    </xsl:call-template>
    <xsl:call-template name="header_exam_field">
      <xsl:with-param name="field_name" select = "'interpretation value'" />
    </xsl:call-template>

    <!-- Test -->

    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'test index'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'type title'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'type stage'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'type best test'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'type manual best'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'composite test'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'datetime'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'sensor type'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'excluded'" />
    </xsl:call-template>
    <xsl:call-template name="header_test_field">
      <xsl:with-param name="field_name" select = "'best criteria'" />
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'EVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'IVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV05'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV075'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV1'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'PEF'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV05_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV05_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV05_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV075_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV075_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV075_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV075_FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV1_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV1_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV1_FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV3_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEV3_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF25'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF50'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF75'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF25_75'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF25_75_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF25_75_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF50_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FEF50_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'MVV_ind'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIV05'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIV1'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIV3'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'PIF'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIV05_FIVC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIR'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIF25'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIF50'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FIF75'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'R50'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FET'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FET2575'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TV'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'ERV'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'IRV'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'IC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FRC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'RV'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FR'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TI'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TE'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'VE'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'FRC_TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'RV_TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'EV'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TV_TI'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'TI_TTOT'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'Quality'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'Lung Age'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'Start Time'"/>
    </xsl:call-template>
    <xsl:call-template name="header_result">
      <xsl:with-param name="result_type" select="'Variation'"/>
    </xsl:call-template>

		<xsl:text>"spare"</xsl:text>
		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

	<xsl:template match="test" >
    <xsl:apply-templates select="ancestor::patient" />
    <xsl:apply-templates select="ancestor::exam" />

    <xsl:apply-templates select="index" mode="numeric" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="test_type/test_title" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="test_type/stage" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="test_type/best_test" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="test_type/manual_best" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="test_type/composite_test" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="date_time" mode="datetime" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="sensor_type" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="excluded" mode="string" />
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="best_criteria" mode="string" />
    <xsl:text>,</xsl:text>

    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'EVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'IVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV05'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV075'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV1'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'PEF'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV05_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV05_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV05_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV075_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV075_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV075_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV075_FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV1_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV1_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV1_FEV6'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV3_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEV3_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF25'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF50'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF75'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF25_75'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF25_75_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF25_75_FEV3'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF50_VC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FEF50_FVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'MVV_ind'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIV05'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIV1'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIV3'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'PIF'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIV05_FIVC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIR'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIF25'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIF50'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FIF75'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'R50'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FET'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FET2575'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TV'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'ERV'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'IRV'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'IC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FRC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'RV'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FR'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TI'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TE'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'VE'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'FRC_TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'RV_TLC'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'EV'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TV_TI'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'TI_TTOT'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'Quality'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'Lung Age'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'Start Time'"/>
    </xsl:call-template>
    <xsl:call-template name="Result">
      <xsl:with-param name="title" select="'Variation'"/>
    </xsl:call-template>

    <xsl:text>&#xa;</xsl:text>
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
	</xsl:template>

	<xsl:template match="exam" >
    <xsl:apply-templates select="exam_id" mode="string" />
    <xsl:text>,</xsl:text>
		<xsl:apply-templates select="type" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="new" mode="string" />
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
		<xsl:apply-templates select="reproducibility/reproducibility_message" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/stage" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/title" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="interpretation/value" mode="string" />
		<xsl:text>,</xsl:text>
  </xsl:template>

	<xsl:template name="Result" >
		<xsl:param name="title" />

		<xsl:apply-templates select="result[title=$title]/value" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="result[title=$title]/unit_symbol" mode="string" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="result[title=$title]/predicted_value" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="result[title=$title]/predicted_value_min" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="result[title=$title]/predicted_value_max" mode="numeric" />
		<xsl:text>,</xsl:text>
		<xsl:apply-templates select="result[title=$title]/z_score" mode="numeric" />
		<xsl:text>,</xsl:text>
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
		<xsl:param name = "result_type" />

		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'value'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'unit symbol'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value min'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'predicted value max'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_field">
			<xsl:with-param name="result_type" select = "$result_type" />
			<xsl:with-param name="field_name" select = "'z score'" />
		</xsl:call-template>
	</xsl:template>

  <xsl:template name="header_exam_field">
    <xsl:param name = "field_name" />

    <xsl:text>"</xsl:text>
    <xsl:value-of select="$field_name"/>
    <xsl:text>",</xsl:text>
  </xsl:template>

	<xsl:template name="header_test_field">
		<xsl:param name = "field_name" />

    <xsl:text>"</xsl:text>
		<xsl:value-of select="$field_name"/>
		<xsl:text>",</xsl:text>
	</xsl:template>

	<xsl:template name="header_result_field">
		<xsl:param name = "result_type" />
		<xsl:param name = "field_name" />

    <xsl:text>"</xsl:text>
		<xsl:value-of select="$result_type"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$field_name"/>
		<xsl:text>",</xsl:text>
	</xsl:template>

</xsl:stylesheet>