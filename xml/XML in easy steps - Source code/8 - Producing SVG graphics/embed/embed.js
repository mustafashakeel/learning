function info(lang,doc)
{
  try
  {
	// Default assumes call emanates from the HTML parent document.
	var box = document.getElementById("box"); 

	// But if the call emanates from a child SVG document...
	if(doc == "child")
	{
		// Prefix the parent DOM object to address the <div>.
		box = parent.document.getElementById("box")
	}

	// Write the message in the chosen language.
	if(lang == "en")
	{
		box.innerHTML = "Hello!<hr>Here is the information in English...";
	}
	else if(lang == "sp")
	{
		box.innerHTML = "Hola!<hr>Aqu&iacute; est&aacute; la informaci&oacute;n en Espa&ntilde;ol...";
	}
  }
  catch(error)
  {
		// Or surrender.
		alert(error.description);
  }
	
}