# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Generates a random integer from min (included) to max (excluded)
# Uses a linear congruential generator, which is more efficient than the UUID method used in aestd:math/random_lcg
# Input: aestd.random.min|aestd.random.max, output: aestd.random

function #aestd.private:lib1/math/random_range_lcg