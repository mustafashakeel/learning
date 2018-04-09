var xmlHttpReq = null;	
							
function sendXmlRequest()								
{
  try
  {									
	if (window.XMLHttpRequest)								
	{										
		xmlHttpReq = new XMLHttpRequest();				
	}
	else if (window.ActiveXObject)							
	{										
		xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
	}

	if(xmlHttpReq.overrideMimeType ) xmlHttpReq.overrideMimeType("text/xml"); 
	xmlHttpReq.onreadystatechange = loadXmlData;				
	xmlHttpReq.open("GET", "topics.xml", true); 				
        xmlHttpReq.send(null);
  }
  catch( error )
  {
    document.getElementById("box").innerHTML = "XML data is unavailable";
  }	
}
	
var xmlData;

function loadXmlData()								
{
	if ( (xmlHttpReq.readyState == 4) && (xmlHttpReq.status == 200) ) 						
	{									
		xmlData = xmlHttpReq.responseXML;
		getXmlData(1,"systems");
	}		 
}



function getXmlData(num,topic)
{
  // Get the first specified topic element node.
  var node = xmlData.getElementsByTagName(topic)[0];

  // Create a list of all <book> elements for the topic.
  var nodeList = node.getElementsByTagName("book");

  // Initialize a variable with an empty string.
  var data = "<table>";

  // Loop through all <book> element nodes.
  for(i=0; i < nodeList.length; i++)
  {
    // Append the id attribute value to the string.
    data += "<tr><td>" + nodeList[i].getAttribute("id") + "</td>";

    // Loop through each child node of the <book> element node.
    for( j=0; j < nodeList[i].childNodes.length; j++)
    { 
      if( nodeList[i].childNodes[j].nodeType == 1 )
      {
        // Append each child node's text node value to the string.
	data += "<td> " + nodeList[i].childNodes[j].firstChild.nodeValue + "</td>";
      }
    }
    data += "</tr>";
  }
  data += "</table>";

  // Display the table data.
  document.getElementById("box").innerHTML = data;

  // Style the active tab.
  styleTabs(num);
}


function styleTabs(num)
{
	// First set all tabs default styles.
	for( i = 1; i < 7;  i++ )
	{
		with(document.getElementById("tab"+i) )
		{
			style.color="gray";
			style.background="thistle";
			style.cursor="pointer";
		}
	}

	// Set the active tab style.
	with( document.getElementById("tab"+num) )
	{
		style.color="white";
		style.background="red";
	}
}

window.onload=sendXmlRequest;