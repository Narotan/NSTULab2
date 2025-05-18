use std::io::{self, Write};

fn main() {
    // Ввод строки
    print!("Введите строку ");
    io::stdout().flush().unwrap();
    let mut text = String::new();
    io::stdin().read_line(&mut text).expect("Ошибка при чтении строки");
    let text = text.trim_end();

    // Счетчик гласных
    let mut CountGlas = 0;
    // Счетчик согласных
    let mut CounterSog = 0;

    // glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ"
    let glas = "aeiouyаеёиоуыэюяAEIOUYАЕЁИОУЫЭЮЯ";
    // soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ" 
    let soglas = "bcdfghjklmnpqrstvwxzбвгджзйклмнпрстфхцчшщBCDFGHJKLMNPQRSTVWXZБВГДЖЗЙКЛМНПРСТФХЦЧШЩ";

    // Согласные буквы
    for i in text.chars() {
        if glas.contains(i) {
            CountGlas += 1;
        } else if soglas.contains(i) {
            CounterSog += 1;
        }
    }

    if CountGlas > CounterSog { // Сравнение количества гласных и согласных
        println!("да");
    } else if CountGlas < CounterSog {
        println!("нет");
    } else {
        println!("одинаково");
    }
}

