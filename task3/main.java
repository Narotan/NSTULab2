import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число: ");
        int n = scanner.nextInt();
        int count = 0;

        for (int i = 0; i < n; i++) {
            int num = scanner.nextInt();
            int lastDigit = num % 10;
            num /= 10;
            boolean sameDigit = true;

            while (num > 0) {
                int currentDigit = num % 10;
                if (currentDigit != lastDigit) {
                    sameDigit = false;
                    break;
                }
                num /= 10;
            }

            if (sameDigit) {
                count++;
            }
        }

        System.out.println("Количество: " + count);
    }
}
