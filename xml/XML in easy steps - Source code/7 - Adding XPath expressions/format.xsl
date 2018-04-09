<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 128. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>	

<table style = "width:450px; background:wheat">

<tr style="background:olive; color:yellow"> <th>Model</th> 
	<th>Regular Price</th> <th>10% Discount</th> <th>Sale Price</th></tr>

<xsl:for-each select = "/b:doc/b:item/b:price">
<tr>

<td> <xsl:value-of select = "../b:model" /> </td>

<td> <xsl:value-of select = "format-number(., '$ ##,###')" /> </td>

<td style="color:red; font-weight:bold">Save 
<xsl:value-of select = "format-number( (. div 100)*10, '$ #,###')"/></td> 

<td style="background:red; color:white; font-weight:bold"> 
<xsl:value-of select = "format-number( floor(. - (. div 100)*10), '$ ##,###')"/> </td>

</tr>
</xsl:for-each>

</table>

</body> </html>

</xsl:template>


</xsl:stylesheet>