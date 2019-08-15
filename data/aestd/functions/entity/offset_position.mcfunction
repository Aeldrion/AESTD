# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Offsets the executing entity's position by its vector scores, in millimeters (1000 = 1 block)
# Input: aestd.vector.x|aestd.vector.y|aestd.vector.z

# Save position/vector scores
scoreboard players operation #aestd.temp aestd.coords.x = @s aestd.coords.x
scoreboard players operation #aestd.temp aestd.coords.y = @s aestd.coords.y
scoreboard players operation #aestd.temp aestd.coords.z = @s aestd.coords.z
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
scoreboard players operation @s aestd.coords.x += @s aestd.vector.x
scoreboard players operation @s aestd.coords.y += @s aestd.vector.y
scoreboard players operation @s aestd.coords.z += @s aestd.vector.z
execute if entity @s[type=minecraft:player] run function aestd:player/set_position_scale50
execute unless entity @s[type=minecraft:player] run function aestd:entity/set_position_scale50

# Load position/vector scores back
scoreboard players operation @s aestd.coords.x = #aestd.temp aestd.coords.x
scoreboard players operation @s aestd.coords.y = #aestd.temp aestd.coords.y
scoreboard players operation @s aestd.coords.z = #aestd.temp aestd.coords.z
scoreboard players operation @s aestd.vector.x = #aestd.temp aestd.vector.x
scoreboard players operation @s aestd.vector.y = #aestd.temp aestd.vector.y
scoreboard players operation @s aestd.vector.z = #aestd.temp aestd.vector.z
