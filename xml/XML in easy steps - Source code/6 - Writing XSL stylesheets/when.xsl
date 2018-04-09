<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 108. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match = "c:doc">

<html><head><title>XSL Output</title></head><body>

<table style = "width:450px">

<tr style="color:white; background:red">
<th>Make</th> <th>Model</th>  <th>$</th>
</tr>

<xsl:for-each select = "c:item" >

<xsl:choose>

<xsl:when test = "c:price &lt; 60000" >
<tr style= "color:black;background:pink;text-align:center" >
<td> 	<xsl:value-of select = "c:make" /> 	</td>
<td> 	<xsl:value-of select = "c:model" /> 	</td>
<td> 	<xsl:value-of select = "c:price" /> 	</td>
</tr>
</xsl:when>

<xsl:otherwise>
<tr style= "color:yellow;background:blue;font-weight:bold;text-align:center" >
<td> 	<xsl:value-of select = "c:make" /> 	</td>
<td> 	<xsl:value-of select = "c:model" /> 	</td>
<td> 	<xsl:value-of select = "c:price" /> 	</td>
</tr>
</xsl:otherwise>

</xsl:choose>

</xsl:for-each>

</table>

</body></html>

</xsl:template>

</xsl:stylesheet>