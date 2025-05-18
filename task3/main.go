package main

import "fmt"

func main() {
	var n, num, count int
	fmt.Print("Введите число: ")
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		lastDigit := num % 10
		num /= 10
		sameDigit := true

		for num > 0 {
			currentDigit := num % 10
			if currentDigit != lastDigit {
				sameDigit = false
				break
			}
			num /= 10
		}

		if sameDigit == true {
			count++
		}
	}

	fmt.Println("Количество: ", count)
}
