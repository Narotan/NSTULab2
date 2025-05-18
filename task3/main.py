n = int(input("Введите количество чисел: ")) #обработка ввода
count = 0

for _ in range(n):
    num = int(input())
    last_digit = num % 10
    num //= 10
    same_digits = True

    while num > 0:
        current_digit = num % 10
        if current_digit != last_digit:
            same_digits = False
            break
        num //= 10

    if same_digits:
        count += 1

print("Количество чисел с одинаковыми цифрами:", count)
