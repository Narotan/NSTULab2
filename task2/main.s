.global _main
.align 2

_main:
    // Вывод приглашения
    mov x0, #1          // stdout
    adr x1, prompt      // адрес строки
    mov x2, #prompt_len // длина строки
    mov x16, #4         // syscall write
    svc #0

    // Чтение числа
    mov x0, #0          // stdin
    sub sp, sp, #16     // выделяем 16 байт на стеке
    mov x1, sp          // буфер для ввода
    mov x2, #16         // размер буфера
    mov x16, #3         // syscall read
    svc #0

    // Преобразование ASCII в число (поддержка многозначных)
    mov x19, #0         // n = 0
    mov x20, sp         // указатель на буфер
convert_loop:
    ldrb w21, [x20], #1 // загружаем символ
    cmp w21, #10        // проверка на перенос строки (Enter)
    beq convert_done
    sub w21, w21, #'0'  // ASCII в число
    mov x22, #10
    mul x19, x19, x22   // n *= 10
    add x19, x19, x21   // n += digit
    b convert_loop
convert_done:

    // Инициализация счётчика
    mov x20, #0         // count = 0

loop:
    cmp x19, #1         // while (n > 1)
    ble end_loop

    // Проверка на чётность
    tst x19, #1
    bne odd_case

    // Чётный случай
    lsr x21, x19, #1    // x21 = n / 2
    add x20, x20, x21
    mov x19, x21
    b loop

odd_case:
    // Нечётный случай
    sub x21, x19, #1
    lsr x21, x21, #1    // x21 = (n - 1) / 2
    add x20, x20, x21
    add x19, x21, #1    // n = (n - 1)/2 + 1
    b loop

end_loop:
    // Преобразование числа в ASCII
    mov x0, x20
    bl itoa             // вызов функции преобразования

    // Вывод результата
    mov x1, x0          // адрес строки
    mov x2, x21         // длина строки
    mov x0, #1          // stdout
    mov x16, #4         // syscall write
    svc #0

    // Завершение программы
    mov x0, #0
    mov x16, #1
    svc #0

itoa:
    // Функция преобразования числа в строку (x0 = число)
    sub sp, sp, #32
    mov x1, sp
    add x1, x1, #21
    mov x2, #0
    mov x3, #10
itoa_loop:
    sub x1, x1, #1
    udiv x4, x0, x3
    msub x5, x4, x3, x0
    add x5, x5, #'0'
    strb w5, [x1]
    mov x0, x4
    add x2, x2, #1
    cbnz x0, itoa_loop
    mov x0, x1
    mov x21, x2         // сохраняем длину
    ret

prompt:
    .ascii "Введите число команд: "
prompt_len = . – prompt
