# Dichotomy

this function accepts the following:
- math function
- intervals a and b
- precision

## usage

### matlab
 

```bash
>> dicho('log(x)+cos(x)', 2, 4, 0.00001);
```

### javascript

```js
// main.js
dicho('x*x - 4', 0, 3, 0.0001);
```

### rust 

```rs
fn main() {
    // Define the function
    let f = |x: f64| x.powi(2) - 4.0;

    let (x, n) = dicho(&f, 15, 28, 0.01);
    
    println!("Solution: {}\nNumber of iterations: {}", x, n);
}
```
