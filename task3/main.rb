# No special dependencies required

print "Введите количество чисел: " #обработка ввода
n = gets.chomp.to_i
count = 0

n.times do
    num = gets.chomp.to_i
    last_digit = num % 10
    num /= 10
    same_digits = true

    while num > 0
        current_digit = num % 10
        if current_digit != last_digit
            same_digits = false
            break
        end
        num /= 10
    end

    if same_digits
        count += 1
    end
end

puts "Количество чисел с одинаковыми цифрами: #{count}"
