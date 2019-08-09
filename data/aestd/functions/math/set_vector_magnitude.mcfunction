# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Modifies the magnitude of a vector / ex (1784,5139,3396),magnitude=5000 -> (1391,4007,2648)
# Input: aestd.math.in|aestd.vector.x|aestd.vector.y|aestd.vector.z, output: aestd.vector.x|aestd.vector.y|aestd.vector.z

scoreboard players operation #aestd.save_input aestd.math.in = @s aestd.math.in
function aestd:math/get_vector_magnitude
scoreboard players operation @s aestd.math.in = #aestd.save_input aestd.math.in

scoreboard players operation @s aestd.vector.x *= @s aestd.math.in
scoreboard players operation @s aestd.vector.y *= @s aestd.math.in
scoreboard players operation @s aestd.vector.z *= @s aestd.math.in

scoreboard players operation @s aestd.vector.x /= @s aestd.math.out
scoreboard players operation @s aestd.vector.y /= @s aestd.math.out
scoreboard players operation @s aestd.vector.z /= @s aestd.math.out
