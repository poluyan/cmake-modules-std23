import std;

import oper;
import calc;

int main()
{
	int a = 2, b = 1;
	std::cout << a << " + " << b << " = " << calc(a, b, "add") << std::endl;
	std::cout << a << " - " << b << " = " << calc(a, b, "sub") << std::endl;
}
