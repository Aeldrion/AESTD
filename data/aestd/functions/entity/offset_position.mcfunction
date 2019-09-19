# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Offsets the executing entity's position by its vector scores, in millimeters (1000 = 1 block)
# Input: aestd.vector.x|aestd.vector.y|aestd.vector.z

# Save position/vector scores
scoreboard players operation #aestd.temp aestd.pos.x = @s aestd.pos.x
scoreboard players operation #aestd.temp aestd.pos.y = @s aestd.pos.y
scoreboard players operation #aestd.temp aestd.pos.z = @s aestd.pos.z
scoreboard players operation #aestd.temp aestd.vector.x = @s aestd.vector.x
scoreboard players operation #aestd.temp aestd.vector.y = @s aestd.vector.y
scoreboard players operation #aestd.temp aestd.vector.z = @s aestd.vector.z

# Divide vector scores by 20
scoreboard players set $20 aestd.math.var 20
scoreboard players operation @s aestd.vector.x /= $20 aestd.math.var
scoreboard players operation @s aestd.vector.y /= $20 aestd.math.var
scoreboard players operation @s aestd.vector.z /= $20 aestd.math.var

# Offset position
function aestd:entity/get_position_scale50
scoreboard players operation @s aestd.pos.x += @s aestd.vector.x
scoreboard players operation @s aestd.pos.y += @s aestd.vector.y
scoreboard players operation @s aestd.pos.z += @s aestd.vector.z
execute if entity @s[type=minecraft:player] run function aestd:player/set_position_scale50
execute unless entity @s[type=minecraft:player] run function aestd:entity/set_position_scale50

# Load position/vector scores back
scoreboard players operation @s aestd.pos.x = #aestd.temp aestd.pos.x
scoreboard players operation @s aestd.pos.y = #aestd.temp aestd.pos.y
scoreboard players operation @s aestd.pos.z = #aestd.temp aestd.pos.z
scoreboard players operation @s aestd.vector.x = #aestd.temp aestd.vector.x
scoreboard players operation @s aestd.vector.y = #aestd.temp aestd.vector.y
scoreboard players operation @s aestd.vector.z = #aestd.temp aestd.vector.z
