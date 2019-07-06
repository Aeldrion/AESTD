# Written by Aeldrion, Minecraft 1.14.2
# Gets the magnitude of a vector with given coordinates / ex: (1784,5139,3396) -> 6412
# Input: aestd.vector.x|aestd.vector.y|aestd.vector.z, output: aestd.math.out

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
function aestd:math/square_root
