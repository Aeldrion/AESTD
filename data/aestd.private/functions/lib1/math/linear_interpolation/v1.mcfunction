# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players set $1000 aestd.math.var 1000

scoreboard players set #aestd.lerp.(1-t)*v0 aestd.math.var 1000
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var -= @s aestd.math.var
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var *= @s aestd.math.in

scoreboard players operation #aestd.lerp.t*v1 aestd.math.var = @s aestd.math.var
scoreboard players operation #aestd.lerp.t*v1 aestd.math.var *= @s aestd.math.in2

scoreboard players operation @s aestd.math.out = #aestd.lerp.(1-t)*v0 aestd.math.var
scoreboard players operation @s aestd.math.out += #aestd.lerp.t*v1 aestd.math.var
scoreboard players operation @s aestd.math.out /= $1000 aestd.math.var
