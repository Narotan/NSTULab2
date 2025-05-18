using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите строку: ");
        string text = Console.ReadLine();

        string glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ";
        string soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ";

        int countGlas = 0, countSog = 0;

        foreach (char ch in text)
        {
            if (glas.Contains(ch))
                countGlas++;
            else if (soglas.Contains(ch))
                countSog++;
        }

        if (countGlas > countSog)
            Console.WriteLine("да");
        else if (countGlas < countSog)
            Console.WriteLine("нет");
        else
            Console.WriteLine("одинаково");
    }

