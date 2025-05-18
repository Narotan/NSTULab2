using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите количество команд: ");
        int n = int.Parse(Console.ReadLine());
        int matches = 0;

        while (n > 1)
        {
            if (n % 2 == 0)
            {
                matches += n / 2;
                n /= 2;
            }
            else
            {
                matches += (n - 1) / 2;
                n = (n - 1) / 2 + 1;
            }
        }

        Console.WriteLine(matches);
    }
}
