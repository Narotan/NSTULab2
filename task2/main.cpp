#include <iostream>

using namespace std;

int main() {
    int n;
    cout << "Введите число команд: " << endl;
    cin >> n;
    int matches = 0;
    while (n > 1) {
        if (n % 2 == 0) {
            matches += n / 2;
            n /= 2;
        }
        else {
            matches += (n - 1) / 2;
            n = (n - 1) / 2 + 1;
        }
    }

    cout << matches << endl;
}
