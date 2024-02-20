function dicho(f, a, b, e) {
	const fx = (x) => eval(f);

	let n = 0;
	let x;

	while (Math.abs(b - a) > e) {
		n++;
		x = (a + b) / 2;

		if (fx(a) * fx(x) < 0) {
			b = x;
		} else {
			a = x;
		}
	}

	console.log(`solution: ${x}\nnumber of iterations: ${n}`);
}
