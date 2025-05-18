use std::io;

fn main() {
    // Ввод числа команд
    println!("Введите количество команд: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения ввода");
    let mut n: i32 = input.trim().parse().expect("Ошибка преобразования");

    let mut matches = 0;
    
    while n > 1 {
        if n % 2 == 0 {
            matches += n / 2;
            n /= 2;
        } else {
            matches += (n - 1) / 2;
            n = (n - 1) / 2 + 1;
        }
    }
    
    println!("{}", matches);
}

