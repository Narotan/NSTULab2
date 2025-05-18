fun main() {
    print("Введите строку: ")
    val text = readln().lowercase() // Читаем ввод и приводим к нижнему регистру

    val vowels = "aeiouyаеёиоуыэюя" // Все гласные
    val consonants = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщ" // Все согласные

    var vowelCount = 0
    var consonantCount = 0

    text.forEach { char -> // Для каждого символа в строке
        when {
            char in vowels -> vowelCount++
            char in consonants -> consonantCount++
        }
    }

    // Выводим результат сравнения
    println(
        when {
            vowelCount > consonantCount -> "да"
            vowelCount < consonantCount -> "нет"
            else -> "одинаково"
        }
    )
}
