# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Uses a modified Perlin noise algorithm to generate values between 0 and 1000
# Interpolates between thousands (actual Perlin noise interpolates between integers but the scoreboard cannot compute decimals)
# Input: aestd.math.in|aestd.math.in2|(aestd.seed), output: aestd.math.out

function #aestd.private:lib1/math/perlin_noise