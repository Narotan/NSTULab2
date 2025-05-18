<?php

echo "Введите строку: ";
$text = strtolower(trim(fgets(STDIN))); // Читаем ввод и приводим к нижнему регистру

$vowels = "aeiouyаеёиоуыэюя"; // Все гласные
$consonants = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчш"; // Все согласные

$vowelCount = 0;
$consonantCount = 0;

foreach (str_split($text) as $char) { // Для каждого символа в строке
    if (strpos($vowels, $char) !== false) {
        $vowelCount++;
    } elseif (strpos($consonants, $char) !== false) {
        $consonantCount++;
    }
}

// Выводим результат сравнения
if ($vowelCount > $consonantCount) {
    echo "да";
} elseif ($vowelCount < $consonantCount) {
    echo "нет";
} else {
    echo "одинаково";
}
?>
