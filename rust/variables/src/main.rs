fn immutability_mut() {
    let mut x = 5;
    println!("The value of x is {x}");
    x = 6;
    println!("The value of x is {x}");
}

fn shadowing() {
    let x = 5;
    let x = x + 1; // 6
    {
        let x = x * 2; // 12
        println!("The value of x in the inner scope is: {x}");
    }
    println!("The value of x is: {x}"); // 6
}

fn main() {
    immutability_mut();
    shadowing();
}
