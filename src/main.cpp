#include <iostream>
#include <cstdlib>
#include "ackermann.h"

using namespace std;

int main(int argc, char* argv[])
{
	if(argc < 3)
	{
		cout << "Usage: " << argv[0]
				<< " <m> <n>" << endl;
		return 0;
	}
	
	const unsigned long m = atoi(argv[1]);
	const unsigned long n = atoi(argv[2]);
	
	cout << ackermann(m, n) << endl;
	
	return 0;
}
