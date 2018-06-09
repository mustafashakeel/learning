<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 106. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match = "c:doc">

<html><head><title>XSL Output</title></head><body>

<table style = "width:450px">

<tr style="color:white; background:orange">
<th>Make</th> <th>Model</th> <th>Liters</th> <th>Cyls</th> 
<th>HP</th> <th>$</th>
</tr>

<xsl:for-each select = "c:item" >

<xsl:if test = "c:cyl &gt; 4" >

<tr style= "color:red;background:yellow;text-align:center" >
<td> 	<xsl:value-of select = "c:make" /> 	</td>
<td> 	<xsl:value-of select = "c:model" /> 	</td>
<td> 	<xsl:value-of select = "c:ltr" /> 	</td>
<td> 	<xsl:value-of select = "c:cyl" /> 	</td>
<td> 	<xsl:value-of select = "c:hp" /> 	</td>
<td> 	<xsl:value-of select = "c:price" /> 	</td>
</tr>

</xsl:if>

</xsl:for-each>

</table>

</body></html>

</xsl:template>

</xsl:stylesheet>