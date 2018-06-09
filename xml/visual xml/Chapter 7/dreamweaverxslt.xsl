<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="movies.xml" --><!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ot="http://www.othertitles.com">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Untitled Document</title>
</head>

<body>
<table border="1">
  <tr>
    <th scope="col">Title</th>
    <th scope="col">Review</th>
  </tr>
  <xsl:for-each select="movieList/movie">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="review" disable-output-escaping="yes"/></td>
    </tr>
  </xsl:for-each>
  
</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>