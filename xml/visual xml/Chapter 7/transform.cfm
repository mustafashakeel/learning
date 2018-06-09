<cffile action="read" file="movies.xslt" variable="xsltdoc">

<cfset xmldoc = XMLParse("movies.xml")>

<cfoutput>
#XMLTransform(xmldoc, xsltdoc)#
</cfoutput>