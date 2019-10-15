# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

function aestd1:entity/get_direction
scoreboard players operation @s aestd.vector.x = @s aestd.dir.x
scoreboard players operation @s aestd.vector.y = @s aestd.dir.y
scoreboard players operation @s aestd.vector.z = @s aestd.dir.z
function aestd1:math/get_vector_magnitude
