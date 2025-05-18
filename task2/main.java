import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество команд: ");
        int n = scanner.nextInt(); // Ввод числа команд

        int matches = 0;

        while (n > 1) {
            if (n % 2 == 0) {
                matches += n / 2;
                n /= 2;
            } else {
                matches += (n - 1) / 2;
                n = (n - 1) / 2 + 1;
            }
        }

        System.out.println(matches); // Вывод количества матчей
    }
}
