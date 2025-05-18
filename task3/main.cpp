#include <iostream>

using namespace std;

int main() {
    int n;
    cout << "Введите количество чисел: ";
    cin >> n;
    
    int count = 0;  // Инициализация счетчика
    
    for (int i = 0; i < n; i++) {
        int num;
        cin >> num;
        
        int last_digit = num % 10;
        bool same_digit = true;
        int temp = num;  // Работаем с временной переменной, чтобы не терять исходное число
        
        while (temp > 0) {
            int current_digit = temp % 10;
            if (current_digit != last_digit) {
                same_digit = false;
                break;
            }
            temp /= 10;
        }

        if (same_digit) {
            count++;
        }
    } 
    
    cout << "Количество чисел с одинаковыми цифрами: " << count << endl;

    return 0;
}
