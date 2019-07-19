# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Gets the magnitude of the motion vector
# Input: sender, output: aestd.math.out

function aestd:entity/get_motion
scoreboard players operation @s aestd.vector.x = @s aestd.motion.x
scoreboard players operation @s aestd.vector.y = @s aestd.motion.y
scoreboard players operation @s aestd.vector.z = @s aestd.motion.z
function aestd:math/get_vector_magnitude
