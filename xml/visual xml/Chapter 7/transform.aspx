<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<%@ Import Namespace = "System.Xml" %>
<%@ Import Namespace = "System.Xml.Xsl" %>
<%@ Import Namespace = "System.Xml.Xpath" %>

<script language="c#" runat="server">
public void Page_Load(Object sender, EventArgs E)
{
	string xmlPath = Server.MapPath("movies.xml");
	string xslPath = Server.MapPath("movies.xslt");
	
	XPathDocument doc = new XPathDocument(xmlPath);
	XslTransform transform = new XslTransform();

	transform.Load(xslPath);
	transform.Transform(doc);	
}
</script>