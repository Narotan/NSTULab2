using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите число: ");
        int n = int.Parse(Console.ReadLine());
        int count = 0;

        for (int i = 0; i < n; i++)
        {
            int num = int.Parse(Console.ReadLine());
            int lastDigit = num % 10;
            num /= 10;
            bool sameDigit = true;

            while (num > 0)
            {
                int currentDigit = num % 10;
                if (currentDigit != lastDigit)
                {
                    sameDigit = false;
                    break;
                }
                num /= 10;
            }

            if (sameDigit)
                count++;
        }

        Console.WriteLine($"Количество: {count}");
    }
}
