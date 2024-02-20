package dicho

import (
	"math"
)

func Dicho(f func(float64) float64, a, b, e float64) (float64, int) {
	n := 0
	var x float64

	for math.Abs(b-a) > e {
		n++
		x = (a + b) / 2

		if f(a)*f(x) < 0 {
			b = x
		} else {
			a = x
		}
	}

	return x, n
}
