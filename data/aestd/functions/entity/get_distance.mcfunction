# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Gets the distance (x50) between the executing entity's position and the context position
# Ex. execute at @s positioned ^ ^ ^20 run function aestd:entity/get_distance yields 1000 because 20x50=1000
# Caps at 46300 or 926 blocks away (otherwise overflows happen)
# Output: aestd.math.out

function aestd:context/get_position_scale50
scoreboard players operation @s aestd.vector.x = @s aestd.coords.x
scoreboard players operation @s aestd.vector.y = @s aestd.coords.y
scoreboard players operation @s aestd.vector.z = @s aestd.coords.z

function aestd:entity/get_position_scale50
scoreboard players operation @s aestd.vector.x -= @s aestd.coords.x
scoreboard players operation @s aestd.vector.y -= @s aestd.coords.y
scoreboard players operation @s aestd.vector.z -= @s aestd.coords.z

function aestd:math/get_vector_magnitude
execute if entity @s[distance=926..] run scoreboard players set @s aestd.math.out 46300
