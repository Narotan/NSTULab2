import Foundation

// Ввод количества чисел для проверки
print("Введите число: ", terminator: "")
guard let input = readLine(), let n = Int(input) else { exit(0) }

var count = 0

// Проверка каждого числа на одинаковые цифры
for _ in 0..<n {
    guard let numInput = readLine(), var num = Int(numInput) else { continue }
    let lastDigit = num % 10  // Берём последнюю цифру для сравнения
    num /= 10
    var sameDigit = true
    
    // Проверяем, все ли цифры совпадают с последней
    while num > 0 {
        let currentDigit = num % 10
        if currentDigit != lastDigit {
            sameDigit = false
            break
        }
        num /= 10
    }
    
    if sameDigit {
        count += 1  // Увеличиваем счётчик, если все цифры одинаковы
    }
}

print("Количество: \(count)")  // Вывод результата
