﻿import cgi
data = cgi.FieldStorage()

list = '<ul>'

if data.getvalue( 'sail' ) :
  list += '<li>' + data.getvalue( 'sail' )

if data.getvalue( 'walk' ) :
  list += '<li>' + data.getvalue( 'walk' )

if data.getvalue( 'skee' ) :
  list += '<li>' + data.getvalue( 'skee' )

list += '</ul>'

print( 'Content-type:text/html\r\n\r\n' )
print( '<!DOCTYPE HTML>' )
print( '<html lang="en">' )
print( '<head> <meta charset="UTF-8">' )
print( '<title>Python Response</title> </head>' )
print( '<body>' )
print( '<h1>' , list , '</h1>' )
print( '<a href="check.html">Back</a>' )
print( '</body>' )
print( '</html>' )