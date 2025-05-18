const readline = require('readline-sync');

const text = readline.question("Введите строку: ");
const glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ";
const soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ";

let countGlas = 0, countSog = 0;

for (const ch of text) {
    if (glas.includes(ch)) countGlas++;
    else if (soglas.includes(ch)) countSog++;
}

if (countGlas > countSog) console.log("да");
else if (countGlas < countSog) console.log("нет");
else console.log("одинаково");
