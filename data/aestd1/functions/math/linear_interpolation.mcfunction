# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Calculates an interpolation between two inputs (in and in2) for a parameter (var) in the closed interval [0, 1000]
# When var is 0, returns in. When var is 1000, returns in2.
# Input: aestd.math.var|aestd.math.in|aestd.math.in2, output: aestd.math.out

function #aestd.private:lib1/math/linear_interpolation