#include <iostream>

using namespace std;

string *GetNotSoSecretCode()
{
  string *code = new string("ABCDEF");
  return code;
}

int main()
{
  string newcode;
  int index;

  for (index = 0; index < 10; index++)
  {
    newcode = *GetNotSoSecretCode();
    cout << newcode << endl;
  }

  return 0;
}
