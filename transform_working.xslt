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

		<xsl:call-template name="header_result_with_prediction">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'VC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'EVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'IVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV05'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV075'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction_and_z">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV1'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV3'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV6'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction_and_z">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction_and_z">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'PEF'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV05_VC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV05_FVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV05_FEV3'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV075_VC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV075_FVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV075_FEV3'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV075_FEV6'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV1_VC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result_with_prediction_and_z">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV1_FVC'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV1_FEV6'" />
		</xsl:call-template>
		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "'FEV3_VC'" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="test" >
		<xsl:apply-templates select="test_type/test_title" mode="string" />
		<xsl:apply-templates select="test_type/stage" mode="string" />
		<xsl:apply-templates select="test_type/best_test" mode="string" />
		<xsl:apply-templates select="test_type/manual_best" mode="string" />
		<xsl:apply-templates select="index" mode="numeric" />
		<xsl:apply-templates select="date_time" mode="datetime" />
		<xsl:apply-templates select="sensor_type" mode="string" />
		<xsl:apply-templates select="excluded" mode="string" />
		<xsl:apply-templates select="best_criteria" mode="string" />

		<xsl:apply-templates select="result[title='VC']"/>
		<xsl:apply-templates select="result[title='EVC']"/>
		<xsl:apply-templates select="result[title='IVC']"/>
		<xsl:apply-templates select="result[title='FEV05']"/>
		<xsl:apply-templates select="result[title='FEV075']"/>
		<xsl:apply-templates select="result[title='FEV1']"/>
		<xsl:apply-templates select="result[title='FEV3']"/>
		<xsl:apply-templates select="result[title='FEV6']"/>
		<xsl:apply-templates select="result[title='FVC']"/>
		<xsl:apply-templates select="result[title='PEF']"/>
		<xsl:apply-templates select="result[title='FEV05_VC']"/>
		<xsl:apply-templates select="result[title='FEV05_FVC']"/>
		<xsl:apply-templates select="result[title='FEV05_FEV3']"/>
		<xsl:apply-templates select="result[title='FEV075_VC']"/>
		<xsl:apply-templates select="result[title='FEV075_FVC']"/>
		<xsl:apply-templates select="result[title='FEV075_FEV3']"/>
		<xsl:apply-templates select="result[title='FEV075_FEV6']"/>
		<xsl:apply-templates select="result[title='FEV1_VC']"/>
		<xsl:apply-templates select="result[title='FEV1_FVC']"/>
		<xsl:apply-templates select="result[title='FEV1_FEV6']"/>
		<xsl:apply-templates select="result[title='FEV3_VC']"/>
	</xsl:template>

	<xsl:template match="patient">
		<xsl:apply-templates select="id" mode="numeric" />
		<xsl:apply-templates select="gender" mode="string" />
		<xsl:apply-templates select="dob" mode="date" />
		<xsl:apply-templates select="age" mode="numeric" />
		<xsl:apply-templates select="origin" mode="string" />
		<xsl:apply-templates select="height" mode="numeric" />
		<xsl:apply-templates select="weight" mode="numeric" />
		<xsl:apply-templates select="bmi" mode="numeric" />
		<xsl:apply-templates select="smoker" mode="numeric" />
		<xsl:apply-templates select="dyspnoea_score" mode="numeric" />
		<xsl:apply-templates select="exam" />

		<xsl:text>&#xa;</xsl:text>
	</xsl:template>

	<xsl:template match="exam" >
		<xsl:apply-templates select="type" mode="string" />
		<xsl:apply-templates select="new" mode="string" />
		<xsl:apply-templates select="exam_id" mode="string" />
		<xsl:apply-templates select="date_time" mode="datetime" />
		<xsl:apply-templates select="notes" mode="string" />
		<xsl:apply-templates select="reproducibility/test_title" mode="string" />
		<xsl:apply-templates select="reproducibility/stage" mode="string" />
		<xsl:apply-templates select="reproducibility/reproducibility_title" mode="string" />
		<xsl:apply-templates select="reproducibility/reproducibility_value" mode="string" />
		<xsl:apply-templates select="interpretation/stage" mode="string" />
		<xsl:apply-templates select="interpretation/title" mode="string" />
		<xsl:apply-templates select="interpretation/value" mode="string" />

		<xsl:apply-templates select="test[position() = 1]"/>
	</xsl:template>

	<xsl:template match="result">
		<xsl:apply-templates select="value" mode="numeric" />
		<xsl:apply-templates select="unit_symbol" mode="string" />
	</xsl:template>

	<xsl:template match="result[predicted_value]" >
		<xsl:apply-templates select="value" mode="numeric" />
		<xsl:apply-templates select="unit_symbol" mode="string" />
		<xsl:apply-templates select="predicted_value" mode="numeric" />
		<xsl:apply-templates select="predicted_value_min" mode="numeric" />
		<xsl:apply-templates select="predicted_value_max" mode="numeric" />
	</xsl:template>

	<xsl:template match="result[z_score]" >
		<xsl:apply-templates select="value" mode="numeric" />
		<xsl:apply-templates select="unit_symbol" mode="string" />
		<xsl:apply-templates select="predicted_value" mode="numeric" />
		<xsl:apply-templates select="predicted_value_min" mode="numeric" />
		<xsl:apply-templates select="predicted_value_max" mode="numeric" />
		<xsl:apply-templates select="z_score" mode="numeric" />
	</xsl:template>

	<xsl:template match="*" mode="numeric" >
		<xsl:value-of select="text()" />
		<xsl:text>,</xsl:text>
	</xsl:template>

	<xsl:template match="*" mode="string" >
		<xsl:text>"</xsl:text>
		<xsl:value-of select="text()" />
		<xsl:text>",</xsl:text>
	</xsl:template>

	<xsl:template match="*" mode="date" >
		<xsl:text>"</xsl:text>
		<xsl:value-of select="year" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="month" />
		<xsl:text>-</xsl:text>
		<xsl:value-of select="day" />
		<xsl:text>",</xsl:text>
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
		<xsl:text>",</xsl:text>
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
	</xsl:template>

	<xsl:template name="header_result_with_prediction">
		<xsl:param name = "test_number" />
		<xsl:param name = "result_type" />

		<xsl:call-template name="header_result">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
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
	</xsl:template>

	<xsl:template name="header_result_with_prediction_and_z">
		<xsl:param name = "test_number" />
		<xsl:param name = "result_type" />

		<xsl:call-template name="header_result_with_prediction">
			<xsl:with-param name="test_number" select = "$test_number" />
			<xsl:with-param name="result_type" select = "$result_type" />
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