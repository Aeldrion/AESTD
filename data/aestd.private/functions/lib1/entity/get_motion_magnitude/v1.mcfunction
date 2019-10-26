# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

function aestd1:entity/get_motion
scoreboard players operation @s aestd.vector.x = @s aestd.motion.x
scoreboard players operation @s aestd.vector.y = @s aestd.motion.y
scoreboard players operation @s aestd.vector.z = @s aestd.motion.z
function aestd1:math/get_vector_magnitude
