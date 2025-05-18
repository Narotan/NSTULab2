<?php
echo "Введите количество команд: ";
$n = intval(trim(fgets(STDIN)));
$matches = 0;
$current = $n;

while ($current > 1) {
    if ($current % 2 == 0) {
        $matches += $current / 2;
        $current /= 2;
    } else {
        $matches += ($current - 1) / 2;
        $current = ($current - 1) / 2 + 1;
    }
}

echo $matches . PHP_EOL;
?>
