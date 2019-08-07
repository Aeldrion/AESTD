# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Gets the magnitude of the executing entity's motion vector multiplied by 1000
# Example: if the executing entity's motion is 1.784; 5.139; 3.396, the magnitude is 6412
# Output: aestd.math.out

function aestd:entity/get_motion
scoreboard players operation @s aestd.vector.x = @s aestd.motion.x
scoreboard players operation @s aestd.vector.y = @s aestd.motion.y
scoreboard players operation @s aestd.vector.z = @s aestd.motion.z
function aestd:math/get_vector_magnitude
