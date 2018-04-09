// 1. Copy tree.xml to a directory accessible via HTTP.
// 2. Create xmlhttp.html in the same directory.

// 3. Create a global variable for the XMLHttpRequest object.
var xmlHttpReq;	


// 4. Function to create an XMLHttpRequest.							
function sendXmlRequest()								
{
  // 7. Add a try catch statement to provide a default message.								
  try
  {
	// 5. Test for the HTML DOM window.XMLHttpRequest object.
	if (window.XMLHttpRequest)								
	{ 
		xmlHttpReq = new XMLHttpRequest() ;
	}

	// 6. Or test for window.ActiveXObject. 
	else
	if (window.ActiveXObject)							
	{ 
		xmlHttpReq = new ActiveXObject( "Microsoft.XMLHTTP" ) }

	// 9. Set the MIME type for some old Mozilla browsers.
	if(xmlHttpReq.overrideMimeType)
		xmlHttpReq.overrideMimeType("text/xml");

	// 10. Nominate a function to call when the requrst completes.   
	xmlHttpReq.onreadystatechange = loadXmlData;

	// 11. Define the request type, URL, and asynchronicity.				
	xmlHttpReq.open( "GET", "tree.xml", true );

	// 12. Send the request to the web server.
	xmlHttpReq.send(null);
  } 
  catch(error)
  {
	document.getElementById("box").innerHTML = "XML data is unavailable";
  } 	
}

// 13. Create a global variable to store the XML response data.
var xmlData;

// 14. Function to load XML response data.
function loadXmlData()
{
	// 15. Test the readyState and status for successful request.
	if ( (xmlHttpReq.readyState == 4) && (xmlHttpReq.status == 200) )
	{
		// 16. Assign XML data to the variable, then call the processing function.
		xmlData = xmlHttpReq.responseXML;
		getXmlData();
	}
}

// 17. Function to process the XML response data.								
function getXmlData()
{
	var data = "statusText: "  + xmlHttpReq.statusText;
	data += "<br>status: "     + xmlHttpReq.status;
	data += "<br>readyState: " + xmlHttpReq.readyState;
	data += "<br>Root element name: " + xmlData.documentElement.nodeName;

	document.getElementById("box").innerHTML = data;	
}

// 8.  Call the function after the HTML document has loaded.
window.onload = sendXmlRequest;