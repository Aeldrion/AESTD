# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD v1.0

# Generates a random integer from 0 (included) to aestd.random.max (excluded)
# Uses a linear congruential generator, which is more efficient than the UUID method used in aestd:math/random
# Input: aestd.random.max, output: aestd.random

function #aestd.private:lib1/math/random_lcg