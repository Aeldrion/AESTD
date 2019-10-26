# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players operation #aestd.save_input aestd.math.in = @s aestd.math.in
function aestd1:math/get_vector_magnitude
scoreboard players operation @s aestd.math.in = #aestd.save_input aestd.math.in

scoreboard players operation @s aestd.vector.x *= @s aestd.math.in
scoreboard players operation @s aestd.vector.y *= @s aestd.math.in
scoreboard players operation @s aestd.vector.z *= @s aestd.math.in

scoreboard players operation @s aestd.vector.x /= @s aestd.math.out
scoreboard players operation @s aestd.vector.y /= @s aestd.math.out
scoreboard players operation @s aestd.vector.z /= @s aestd.math.out
