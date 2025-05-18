package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Введите строку: ")
	text, _ := reader.ReadString('\n') // запись входной строки

	glas := "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ"
	soglas := "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ"

	countGlas, countSog := 0, 0 // задаем счетчик для гласных и согласных

	// проходимся циклом по строке
	for _, char := range text {
		if strings.ContainsRune(glas, char) {
			countGlas++
		} else if strings.ContainsRune(soglas, char) {
			countSog++
		}
	}

	// делаем вывод по условию задачи
	if countGlas > countSog {
		fmt.Println("да")
	} else if countGlas < countSog {
		fmt.Println("нет")
	} else {
		fmt.Println("одинаково")
	}
}
