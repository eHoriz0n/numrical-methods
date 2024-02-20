fn dicho(f: &dyn Fn(f64) -> f64, a: f64, b: f64, e: f64) -> (f64, u32) {
    let mut n = 0;
    let mut x = 0.0;

    while (b - a).abs() > e {
        n += 1;
        x = (a + b) / 2.0;

        if f(a) * f(x) < 0.0 {
            b = x;
        } else {
            a = x;
        }
    }

    (x, n)
}


