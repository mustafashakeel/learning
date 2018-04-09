<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 118. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>	
<table style = "width:450px">
<tr> <th>Make</th> <th>Model</th> <th>Liters</th> <th>Cyls</th> <th>$</th> </tr>

<xsl:for-each select = "/b:doc/b:item">
<tr style = "background:lime;text-align:center">
<td> <xsl:value-of select = "./b:make" /> </td>
<td> <xsl:value-of select = "./b:model" /> </td> 
<td> <xsl:value-of select = "./b:ltr" /> </td>
<td> <xsl:value-of select = "./b:cyl" /> </td> 
<td> <xsl:value-of select = "./b:price" /> </td> 
</tr>
</xsl:for-each>

</table></body> </html>

</xsl:template>

</xsl:stylesheet>