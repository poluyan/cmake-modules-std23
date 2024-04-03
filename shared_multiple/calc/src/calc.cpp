module calc;

import <string_view>;

import oper;

int calc(int a, int b, std::string_view op)
{
	return op == "add" ? add(a, b) : sub(a, b);
}
