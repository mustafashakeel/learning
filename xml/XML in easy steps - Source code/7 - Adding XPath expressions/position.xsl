<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 122. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>	

<div style = "background:yellow">

<xsl:for-each select = "/b:doc/b:item[2]">
<xsl:value-of select = "./b:make" /> <br/>
<xsl:value-of select = "./b:model" /> <br/> 
$ <xsl:value-of select = "./b:price" /> 
</xsl:for-each>

</div>

<div style = "background:aqua">
<xsl:for-each select = "/b:doc/b:item" >
	<xsl:if test = "position() = last()" >
 		<xsl:value-of select = "./b:make" /> <br/>
 		<xsl:value-of select = "./b:model" /> <br/> 
		$ <xsl:value-of select = "./b:price" /> 
	</xsl:if>
</xsl:for-each>
</div>


</body> </html>

</xsl:template>


</xsl:stylesheet>