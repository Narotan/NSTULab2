<?php
// No external dependencies needed

echo "Введите количество чисел: "; //обработка ввода
$n = (int) trim(fgets(STDIN));
$count = 0;

for ($i = 0; $i < $n; $i++) {
    $num = (int) trim(fgets(STDIN));
    $last_digit = $num % 10;
    $num = intdiv($num, 10);
    $same_digits = true;

    while ($num > 0) {
        $current_digit = $num % 10;
        if ($current_digit != $last_digit) {
            $same_digits = false;
            break;
        }
        $num = intdiv($num, 10);
    }

    if ($same_digits) {
        $count++;
    }
}

echo "Количество чисел с одинаковыми цифрами: " . $count . "\n";
?>

