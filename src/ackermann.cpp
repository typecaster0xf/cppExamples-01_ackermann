#include <cassert>
#include "ackermann.h"

unsigned long ackermann(
		const unsigned long m,
		const unsigned long n)
{
	if(m == 0)
		return n + 1;
	else if(n == 0)
	{
		assert(m > 0);
		return ackermann(m - 1, 1);
	}else
	{
		assert(m > 0);
		assert(n > 0);
		return ackermann(m - 1, ackermann(m, n - 1));
	}
}

#ifdef UNITTEST
#include <iostream>
using namespace std;
int main()
{
	assert(ackermann(0,0) == 1);
	assert(ackermann(0,1) == 2);
	
	assert(ackermann(1,0) == 2);
	
	assert(ackermann(1,1) == 3);
	
	cout << "ackermann(m, n) unit test passed." << endl;
	return 0;
}
#endif
