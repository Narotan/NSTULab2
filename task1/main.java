import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String text = scanner.nextLine(); // запись входной строки

        String glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ";
        String soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ";

        int countGlas = 0, countSog = 0; // задаем счетчик для гласных и согласных
        
        // проходимся циклом по строке
        for (char ch : text.toCharArray()) {
            if (glas.indexOf(ch) != -1) {
                countGlas++;
            } else if (soglas.indexOf(ch) != -1) {
                countSog++;
            }
        }
        
        // делаем вывод по условию задачи
        if (countGlas > countSog) {
            System.out.println("да");
        } else if (countGlas < countSog) {
            System.out.println("нет");
        } else {
            System.out.println("одинаково");
        }
    }
}
