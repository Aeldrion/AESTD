# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

function aestd1:context/get_position_scale50
scoreboard players operation @s aestd.vector.x = @s aestd.pos.x
scoreboard players operation @s aestd.vector.y = @s aestd.pos.y
scoreboard players operation @s aestd.vector.z = @s aestd.pos.z

function aestd1:entity/get_position_scale50
scoreboard players operation @s aestd.vector.x -= @s aestd.pos.x
scoreboard players operation @s aestd.vector.y -= @s aestd.pos.y
scoreboard players operation @s aestd.vector.z -= @s aestd.pos.z

function aestd1:math/get_vector_magnitude
execute if entity @s[distance=926..] run scoreboard players set @s aestd.math.out 46300
