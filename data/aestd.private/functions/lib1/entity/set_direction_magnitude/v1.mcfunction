# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

function aestd1:entity/get_direction
scoreboard players operation @s aestd.vector.x = @s aestd.dir.x
scoreboard players operation @s aestd.vector.y = @s aestd.dir.y
scoreboard players operation @s aestd.vector.z = @s aestd.dir.z
function aestd1:math/set_vector_magnitude
scoreboard players operation @s aestd.dir.x = @s aestd.vector.x
scoreboard players operation @s aestd.dir.y = @s aestd.vector.y
scoreboard players operation @s aestd.dir.z = @s aestd.vector.z
function aestd1:entity/set_direction
