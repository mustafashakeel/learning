<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 112. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "c:doc">
	<html><head><title>XSL Output</title></head><body>
		<xsl:apply-templates select = "c:item" />
	</body></html>
</xsl:template>


<xsl:template match = "c:item" >

<xsl:value-of select = "c:model" /> 
<br/>
	<img>
	<xsl:attribute name = "src">
		<xsl:value-of select = "concat( ./@id, '.jpg' ) " />
	</xsl:attribute>
	</img>
 
<br/>

</xsl:template>


</xsl:stylesheet>