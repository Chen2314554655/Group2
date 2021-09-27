#include <iostream>
#include <ctime>
using namespace std;
int main()
{
	cout << "1 is rock:  2 is scissors:  3 is paper :  4 is end:" << endl;
	cout << "pls choose " << endl;
	int n;

	while (cin >> n)
	{
		if (n < 1 || n>4) cout << "input error pls re-enter:" << endl;
		else if (n == 4) break;
		else
		{
			int d;
			srand((unsigned)time(0));
			d = rand() % 3 + 1;
			switch (n)
			{
			case 1: cout << "you choose rock" << endl; break;
			case 2: cout << "you choose scissors" << endl; break;
			case 3: cout << "you choose paper" << endl; break;
			}
			switch (d)
			{
			case 1: cout << "ai choose rock" << endl; break;
			case 2: cout << "ai choose scissors" << endl; break;
			case 3: cout << "ai choose paper" << endl; break;
			}
			if (d == n) cout << "tie" << endl;

			else if (d == 2 && n == 1 || d == 3 && n == 2 || d == 3 && n == 1) cout << "you win" << endl;
			else cout << "you lost" << endl;
		}
	}
}
