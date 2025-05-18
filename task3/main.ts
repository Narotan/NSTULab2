const readline = require('readline-sync');

const n: number = parseInt(readline.question("Введите число: "));
let count: number = 0;

for (let i = 0; i < n; i++) {
    let num: number = parseInt(readline.question());
    const lastDigit: number = num % 10;
    num = Math.floor(num / 10);
    let sameDigit: boolean = true;
    
    while (num > 0) {
        const currentDigit: number = num % 10;
        if (currentDigit !== lastDigit) {
            sameDigit = false;
            break;
        }
        num = Math.floor(num / 10);
    }
    
    if (sameDigit) count++;
}

console.log(`Количество: ${count}`);
