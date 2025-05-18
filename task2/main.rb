# Нет дополнительных зависимостей в Ruby

print "Введите количество команд: "  # Вывод запроса для ввода числа команд
n = gets.chomp.to_i  # Ввод числа команд
matches = 0

while n > 1
  if n % 2 == 0
    matches += n / 2
    n /= 2
  else
    matches += (n - 1) / 2
    n = (n - 1) / 2 + 1
  end
end

puts matches

