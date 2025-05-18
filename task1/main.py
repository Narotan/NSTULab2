import string
text = input("Введите строку ") # Ввод строки

CountGlas=0 # Счетчик гласных
CounterSog=0 # Счетчик согласных

glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ" # Гласные буквы
soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ" # Согласные буквы

# Согласные буквы
for i in text: 
    if i in glas:
        CountGlas += 1
    elif i in soglas:
        CounterSog += 1

if CountGlas > CounterSog: # Сравнение количества гласных и согласных
    print("да")
elif CountGlas < CounterSog:
    print("нет")
else:
    print("одинаково")
