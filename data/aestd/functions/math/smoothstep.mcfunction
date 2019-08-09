# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Returns S1(x) = 3x^2-2x^3
# x should be between 0 and 1000 and will be divided by 1000 in the operation. Ex: 400 -> 352
# Clamps x to the interval [0, 1000]: if x<0, returns 0; if x>1000, returns 1000.
# Input: aestd.math.in, output: aestd.math.out

scoreboard players set $1000 aestd.math.var 1000

scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var = @s aestd.math.in
scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var *= @s aestd.math.in
scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var /= $1000 aestd.math.var

scoreboard players set #aestd.smoothstep.3-2x aestd.math.var 3000
scoreboard players operation #aestd.smoothstep.3-2x aestd.math.var -= @s aestd.math.in
scoreboard players operation #aestd.smoothstep.3-2x aestd.math.var -= @s aestd.math.in

scoreboard players operation @s aestd.math.out = #aestd.smoothstep.x^2 aestd.math.var
scoreboard players operation @s aestd.math.out *= #aestd.smoothstep.3-2x aestd.math.var
scoreboard players operation @s aestd.math.out /= $1000 aestd.math.var

# Clamping
scoreboard players set @s[scores={aestd.math.in=..0}] aestd.math.out 0
scoreboard players set @s[scores={aestd.math.in=1000..}] aestd.math.out 1000

scoreboard players set @s[scores={aestd.math.in=..0}] aestd.math.out 0
scoreboard players set @s[scores={aestd.math.in=1000..}] aestd.math.out 1000
