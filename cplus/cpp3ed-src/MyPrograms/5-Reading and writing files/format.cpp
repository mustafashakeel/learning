//=============================================
// C++ Programming in easy steps 3ed. [5:86]
//=============================================

#include <fstream>
#include <string>
#include <iostream>
using namespace std ;


int main()
{
	const int RANGE = 12 ;							// Create a size constant.
	string tab[ RANGE ] ;							// Create a string array.
	int i = 0 , j = 0 ;								// Create counter variables.

	ifstream reader( "records.txt" ) ;				// Create input file object.

	if( ! reader )									// Always check this.
	{
		cout << "Error opening input file" << endl ;
		return -1 ;
	}
	
	while( ! reader.eof() )							// Loop through data...
	{
		if( (i+1) % 4 == 0 ) 			
			getline( reader, tab[ i++ ], '\n' ) ;	// If last item on line stop at \n.
		else 
			getline( reader, tab[ i++ ], '\t' );	// Otherwise stop at \t.
	}
	reader.close() ;
	
	i = 0 ;											// Reset the counter.

	while( i < RANGE )								// Display each record.
	{
		cout << endl << "Record Number: " << ++j << endl ;	
		cout << "Forename: " << tab[ i++ ] << endl ;
		cout << "Surname: " << tab[ i++ ] << endl ;
		cout << "Department: " << tab[ i++ ] << endl ;
		cout << "Telephone: " << tab[ i++ ] << endl ;
	}
	
	return 0 ;
}

