import Foundation

print("Введите строку: ", terminator: "")
if let text = readLine() {
    let glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ"
    let soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ"
    
    var countGlas = 0, countSog = 0 // задаем счетчик для гласных и согласных
    
    // проходимся циклом по строке
    for char in text {
        if glas.contains(char) {
            countGlas += 1
        } else if soglas.contains(char) {
            countSog += 1
        }
    }
    
    // делаем вывод по условию задачи
    if countGlas > countSog {
        print("да")
    } else if countGlas < countSog {
        print("нет")
    } else {
        print("одинаково")
    }
}
