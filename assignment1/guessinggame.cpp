#include <iostream>
#include <ctime>
#include <cstdlib>
#include <string>
using namespace std;

	int main() 
	{
		unsigned int seed = time(0);
		int compNum, userGuess;
		string name;

		srand(seed);
		compNum = rand() % 100 + 1;

		cout <<"What is your name?" << endl;
		getline(cin, name);
		cout <<"Hello, " <<name << endl;

		do
		{
			cout <<"I'm thinking of a number 1-100. Guess what it is?" <<endl;
			cin >> userGuess;
			while (userGuess <=0 || userGuess > 100)
			{
				cout << "Invalid Guess. Choose between 1-100" << endl;
				cin >> userGuess;
			}
			if(compNum < userGuess)
				cout <<"Too high, try again!" <<endl;
			if(compNum > userGuess)
				cout <<"Too low, try again!" <<endl;
			if(compNum == userGuess)
			{
				cout<<"Nice work! My number " << compNum << " matches your guess " << userGuess << endl;
				cout <<"You Win!" << endl;
			}
		} while (compNum != userGuess);
		return 0;
	}
