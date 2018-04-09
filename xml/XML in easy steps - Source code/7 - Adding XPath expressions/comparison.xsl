<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 124. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>	




<xsl:for-each select = "/b:doc/b:item/b:ltr" >
	<xsl:if test = ". &gt; 1.5" >
		<div style = "margin:5px;background:orange">
 		Make: <xsl:value-of select = "../b:make" /> <br/>
 		Model: <xsl:value-of select = "../b:model" /> <br/> 
		Liters: <xsl:value-of select = "." /> </div>
	</xsl:if>
</xsl:for-each>



<xsl:for-each select = "/b:doc/b:item/b:cyl" >
	<xsl:if test = ". &lt; 6" >
		<div style = "margin:5px;background:lime">
 		Make: <xsl:value-of select = "../b:make" /> <br/>
 		Model: <xsl:value-of select = "../b:model" /> <br/> 
		Cylinders: <xsl:value-of select = "." /> </div>
	</xsl:if>
</xsl:for-each>


</body> </html>

</xsl:template>


</xsl:stylesheet>