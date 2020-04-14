# Author: Aeldrion
# Version: 1.15
# Project: AESTD

execute if entity @s run scoreboard players operation #aestd aestd.vector.x = @s aestd.vector.x
execute if entity @s run scoreboard players operation #aestd aestd.vector.y = @s aestd.vector.y
execute if entity @s run scoreboard players operation #aestd aestd.vector.z = @s aestd.vector.z

# Calculate x², y², z²
scoreboard players operation #aestd aestd.math.var = #aestd aestd.vector.x
scoreboard players operation #aestd aestd.math.var2 = #aestd aestd.vector.y
scoreboard players operation #aestd aestd.math.var3 = #aestd aestd.vector.z
scoreboard players operation #aestd aestd.math.var *= #aestd aestd.math.var
scoreboard players operation #aestd aestd.math.var2 *= #aestd aestd.math.var2
scoreboard players operation #aestd aestd.math.var3 *= #aestd aestd.math.var3

# Sum and square root
scoreboard players operation #aestd aestd.math.in = #aestd aestd.math.var
scoreboard players operation #aestd aestd.math.in += #aestd aestd.math.var2
scoreboard players operation #aestd aestd.math.in += #aestd aestd.math.var3

execute if entity @s run scoreboard players operation #aestd.save aestd.var = @s aestd.math.in
function aestd1:math/square_root
scoreboard players operation @s aestd.math.in = #aestd.save aestd.var
