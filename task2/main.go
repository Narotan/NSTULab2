package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Print("Введите количество команд: ")
	fmt.Scan(&n) // Ввод числа команд

	matches := 0

	for n > 1 {
		if n%2 == 0 {
			matches += n / 2
			n /= 2
		} else {
			matches += (n - 1) / 2
			n = (n-1)/2 + 1
		}
	}

	fmt.Println(matches) // Вывод количества матчей
}
