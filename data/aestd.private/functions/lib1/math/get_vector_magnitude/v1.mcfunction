# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# Calculate x², y², z²
scoreboard players operation @s aestd.math.var = @s aestd.vector.x
scoreboard players operation @s aestd.math.var2 = @s aestd.vector.y
scoreboard players operation @s aestd.math.var3 = @s aestd.vector.z
scoreboard players operation @s aestd.math.var *= @s aestd.math.var
scoreboard players operation @s aestd.math.var2 *= @s aestd.math.var2
scoreboard players operation @s aestd.math.var3 *= @s aestd.math.var3

# Sum and square root
scoreboard players operation @s aestd.math.in = @s aestd.math.var
scoreboard players operation @s aestd.math.in += @s aestd.math.var2
scoreboard players operation @s aestd.math.in += @s aestd.math.var3
function aestd1:math/square_root
