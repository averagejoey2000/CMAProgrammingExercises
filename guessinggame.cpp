#include <iostream>
#include <ctime>
#include <cstdlib>
#include <string>
using namespace std;

	int main() {
		unsigned int seed = time(0);
		int compNum, userGuess;
		string name;

		srand(seed);
		compNum = rand() % 100 + 1;


