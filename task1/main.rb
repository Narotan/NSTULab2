# Importing necessary libraries (none required in Ruby for this simple script)
print "Введите строку "  # Вывод приглашения для ввода строки
text = gets.chomp  

CountGlas = 0  # Счетчик гласных
CounterSog = 0  # Счетчик согласных

glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ"  # Гласные буквы
soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ"  # Согласные буквы

# Согласные буквы
text.each_char do |i|
  if glas.include?(i)
    CountGlas += 1
  elsif soglas.include?(i)
    CounterSog += 1
  end
end

if CountGlas > CounterSog  # Сравнение количества гласных и согласных
  puts "да"
elsif CountGlas < CounterSog
  puts "нет"
else
  puts "одинаково"
end
