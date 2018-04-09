<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 120. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">

<html> <head> <title>XSL Output</title> </head> 
<body>	

<table style = "width:450px">
<tr style = "background:thistle;text-align:center">

<xsl:for-each select = "/b:doc/b:item/b:make">

<td>
	<xsl:value-of select="." /><br/>
	<xsl:value-of select="../b:model" /> <br/>
	
	<img> 
		<xsl:attribute name="src" >

			<xsl:value-of select= "concat( ../@id, '.jpg' ) " />

		</xsl:attribute>
	</img>
</td>

</xsl:for-each>

</tr>
</table>

</body> </html>

</xsl:template>


</xsl:stylesheet>