# Written by Aeldrion, Minecraft 1.14.2
# Returns S1(x) = 3x^2-2x^3
# x should be between 0 and 1000 and will be divided by 1000 in the operation. Ex: 400 -> 352
# Input: aestd.math.in, output: aestd.math.out

scoreboard players set #aestd.1000 aestd.math.var 1000

scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var = @s aestd.math.in
scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var *= @s aestd.math.in
scoreboard players operation #aestd.smoothstep.x^2 aestd.math.var /= #aestd.1000 aestd.math.var

scoreboard players set #aestd.smoothstep.3-2x aestd.math.var 3000
scoreboard players operation #aestd.smoothstep.3-2x aestd.math.var -= @s aestd.math.in
scoreboard players operation #aestd.smoothstep.3-2x aestd.math.var -= @s aestd.math.in

scoreboard players operation @s aestd.math.out = #aestd.smoothstep.x^2 aestd.math.var
scoreboard players operation @s aestd.math.out *= #aestd.smoothstep.3-2x aestd.math.var
scoreboard players operation @s aestd.math.out /= #aestd.1000 aestd.math.var
