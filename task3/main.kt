fun main() {
    print("Введите число: ")
    val n = readln().toInt()
    var count = 0

    repeat(n) {
        val num = readln().toInt()
        var temp = num
        val lastDigit = temp % 10
        var same = true
        
        while (temp > 0) {
            if (temp % 10 != lastDigit) {
                same = false
                break
            }
            temp /= 10
        }
        
        if (same) count++
    }

    println("Количество: $count")
}
