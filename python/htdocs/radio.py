﻿import cgi
data = cgi.FieldStorage()

answer = data.getvalue( 'cat' )
	
if answer == 'Markup' : 
	result = answer + ' Is Correct'
else :
	result = answer + ' Is Incorrect'		

print( 'Content-type:text/html\r\n\r\n' )
print( '<!DOCTYPE HTML>' )
print( '<html lang="en">' )
print( '<head> <meta charset="UTF-8">' )
print( '<title>Python Response</title> </head>' )
print( '<body>' )
print( '<h1>' , result , '</h1>' )
print( '<a href="radio.html">Back</a>' )
print( '</body>' )
print( '</html>' )