﻿import cgi , os

data = cgi.FieldStorage()

upload = data[ 'filename' ]
filename = os.path.basename( upload.filename )

with open( filename , 'wb' ) as copy :
  copy.write( upload.file.read() )

print( 'Content-type:text/html\r\n\r\n' )
print( '<!DOCTYPE HTML>' )
print( '<html lang="en">' )
print( '<head> <meta charset="UTF-8">' )
print( '<title>Python Response</title> </head>' )
print( '<body>' )
print( '<h1>File Uploaded:' , filename , '</h1>' )
print( '<a href="upload.html">Back</a>' )
print( '</body>' )
print( '</html>' )