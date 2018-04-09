<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 126. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>	


<xsl:for-each select = "/b:doc/b:item">

		<div style = "background:pink; padding:3px">
 		<xsl:value-of select = "concat( ./b:make , ' ')" /> 
 		<xsl:value-of select = "concat( ./b:model, ' ' )" /> 
		Price: $ <xsl:value-of select = "./b:price" /> </div>
</xsl:for-each>


<div style = "background:red;color:white; font-weight:bold; padding:3px">
Sum Total Price Of All <xsl:value-of select = "count(/b:doc/b:item)"/>
Bikes is $ <xsl:value-of select = "sum(/b:doc/b:item/b:price)"/>
</div>

</body> </html>

</xsl:template>


</xsl:stylesheet>