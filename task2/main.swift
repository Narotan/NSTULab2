import Foundation

// Ввод количества команд
print("Введите количество команд: ", terminator: "")
guard let input = readLine(), var n = Int(input) else { exit(0) }

var matches = 0

// Рассчёт матчей по системе плей-офф
while n > 1 {
    if n % 2 == 0 {
        matches += n / 2  // Чётное количество команд
        n /= 2
    } else {
        matches += (n - 1) / 2  // Нечётное количество команд
        n = (n - 1) / 2 + 1
    }
}

print(matches)  // Вывод общего числа матчей

