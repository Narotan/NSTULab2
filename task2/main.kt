fun main() {
    print("Введите количество команд: ")
    var n = readln().toInt()
    var matches = 0
    var current = n

    while (current > 1) {
        if (current % 2 == 0) {
            matches += current / 2
            current /= 2
        } else {
            matches += (current - 1) / 2
            current = (current - 1) / 2 + 1
        }
    }

    println(matches)
}
