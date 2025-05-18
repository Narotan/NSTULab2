#include <iostream>
#include <string>

using namespace std;

int main() {
    string text;
    cout << "Введите строку: ";
    getline(cin, text);
    
    int CountGlas = 0;
    int CounterSog = 0;

    string glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ";
    string soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ";

    for (size_t i = 0; i < text.length(); i++) {  // Обычный цикл
        char c = text[i];
        if (glas.find(c) != string::npos) {
            CountGlas++;
        }
        else if (soglas.find(c) != string::npos) {
            CounterSog++;
        }
    }

    if (CountGlas > CounterSog) {
        cout << "да" << endl;
    }
    else if (CountGlas < CounterSog) {
        cout << "нет" << endl;
    }
    else {
        cout << "одинаково" << endl;
    }

    return 0;
}
