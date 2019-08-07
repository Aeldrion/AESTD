# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the magnitude (/1000) of the executing entity's motion vector
# Input: aestd.math.in

function aestd:entity/get_motion
scoreboard players operation @s aestd.vector.x = @s aestd.motion.x
scoreboard players operation @s aestd.vector.y = @s aestd.motion.y
scoreboard players operation @s aestd.vector.z = @s aestd.motion.z
function aestd:math/set_vector_magnitude
scoreboard players operation @s aestd.motion.x = @s aestd.vector.x
scoreboard players operation @s aestd.motion.y = @s aestd.vector.y
scoreboard players operation @s aestd.motion.z = @s aestd.vector.z
function aestd:entity/set_motion
