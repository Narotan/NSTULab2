const readline = require('readline-sync');

const n = parseInt(readline.question("Введите количество команд: "));
let matches = 0;
let current = n;

while (current > 1) {
    if (current % 2 === 0) {
        matches += current / 2;
        current /= 2;
    } else {
        matches += (current - 1) / 2;
        current = (current - 1) / 2 + 1;
    }
}

console.log(matches);
