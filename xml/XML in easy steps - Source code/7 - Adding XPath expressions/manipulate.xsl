<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 130. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:b = "http://www.ineasysteps.com/xsd" >

<xsl:output method = "html" encoding = "UTF-8" />

<xsl:template match = "/">
<html> <head> <title>XSL Output</title> </head> 
<body>

<!-- Short model name variables. -->
<xsl:variable name = "g">
<xsl:value-of select = 
	"substring-after( /b:doc/b:item[1]/b:model, 'Electra ' )"/>
</xsl:variable>

<xsl:variable name = "w">
<xsl:value-of select = 
	"substring-after( /b:doc/b:item[2]/b:model, 'Gold ' )" />
</xsl:variable>

<!-- Case conversion variables. -->
<xsl:variable name="lc">abcdefghijklmnopqrstuvwxyz</xsl:variable>
<xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>	

<h2 style="color:tomato">
<xsl:value-of select="translate($g, $lc, $uc)"/> 
versus 
<xsl:value-of select="translate($w, $lc, $uc)"/>
</h2>

<p>
The <xsl:value-of select="$g"/> and the <xsl:value-of select="$w"/> are both great bikes. Some say the <xsl:value-of select="$w"/> is faster and smoother, but riding the <xsl:value-of select="$g"/> is a feeling that's something in your soul.
</p>

</body> </html>

</xsl:template>


</xsl:stylesheet>