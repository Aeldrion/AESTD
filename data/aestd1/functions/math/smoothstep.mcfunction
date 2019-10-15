# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Returns S1(x) = 3x^2-2x^3
# x should be between 0 and 1000 and will be divided by 1000 in the operation. Ex: 400 -> 352
# Clamps x to the interval [0, 1000]: if x<0, returns 0; if x>1000, returns 1000.
# Input: aestd.math.in, output: aestd.math.out

function #aestd.private:lib1/math/smoothstep