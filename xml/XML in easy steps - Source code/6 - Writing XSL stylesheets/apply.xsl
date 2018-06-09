<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 110. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" indent = "yes" />

<xsl:template match = "c:doc">
	<html><head><title>XSL Output</title></head><body>
	<table width = "450px">
	<tr style = "color:white;background:black"> 
	<th>Make</th> <th>Model</th> <th>$</th> </tr>

	<xsl:apply-templates select = "c:item" />
	 
	</table></body></html>
</xsl:template>

<!-- Table row rule. -->
<xsl:template match = "c:item" >
	<tr> 
		<xsl:apply-templates select = "c:make" />
		<xsl:apply-templates select = "c:model" /> 
		<xsl:apply-templates select = "c:price" /> 
	</tr>
</xsl:template>

<!-- Table cell rule #1. -->
<xsl:template match = "c:make" >
	<td style = "color:white;background:red;text-align:center">
	<xsl:value-of select = "." /> </td>
</xsl:template>

<!-- Table cell rule #2. -->
<xsl:template match = "c:model" >
	<td style = "color:black;background:lime;text-align:center">
	<xsl:value-of select = "." /> </td>
</xsl:template>

<!-- Table cell rule #3. -->
<xsl:template match = "c:price" >
	<td style = "color:white;background:blue;text-align:center">
	<xsl:value-of select = "." /> </td>
</xsl:template>

</xsl:stylesheet>