# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Gets the distance (x50) between the sender's position and the context position
# Ex. execute at @s positioned ^ ^ ^20 run function aestd:entity/get_distance yields 1000
# Input: sender|context position, output: aestd.math.out

tag @s add aestd.coords.scale_up

function aestd:context/get_position
scoreboard players operation @s aestd.vector.x = @s aestd.coords.x
scoreboard players operation @s aestd.vector.y = @s aestd.coords.y
scoreboard players operation @s aestd.vector.z = @s aestd.coords.z

function aestd:entity/get_position
scoreboard players operation @s aestd.vector.x -= @s aestd.coords.x
scoreboard players operation @s aestd.vector.y -= @s aestd.coords.y
scoreboard players operation @s aestd.vector.z -= @s aestd.coords.z

tag @s remove aestd.coords.scale_up


function aestd:math/get_vector_magnitude
