# Written by Aeldrion, Minecraft 1.14.2
# Returns lerp(1000t=var,v0=in,v1=in2)
# aestd.math.var should be between 0 and 1000
# Input: aestd.math.var|aestd.math.in|aestd.math.in2

scoreboard players set #aestd.1000 aestd.math.var 1000

scoreboard players set #aestd.lerp.(1-t)*v0 aestd.math.var 1000
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var -= @s aestd.math.var
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var *= @s aestd.math.in

scoreboard players operation #aestd.lerp.t*v1 aestd.math.var = @s aestd.math.var
scoreboard players operation #aestd.lerp.t*v1 aestd.math.var *= @s aestd.math.in2

scoreboard players operation @s aestd.math.out = #aestd.lerp.(1-t)*v0 aestd.math.var
scoreboard players operation @s aestd.math.out += #aestd.lerp.t*v1 aestd.math.var
scoreboard players operation @s aestd.math.out /= #aestd.1000 aestd.math.var
