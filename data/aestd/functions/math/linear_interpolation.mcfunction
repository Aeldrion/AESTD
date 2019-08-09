# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Calculates an interpolation between two inputs (in and in2) for a parameter (var) in the closed interval [0, 1000]
# When var is 0, returns in. When var is 1000, returns in2.
# Input: aestd.math.var|aestd.math.in|aestd.math.in2, output: aestd.math.out

scoreboard players set $1000 aestd.math.var 1000

scoreboard players set #aestd.lerp.(1-t)*v0 aestd.math.var 1000
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var -= @s aestd.math.var
scoreboard players operation #aestd.lerp.(1-t)*v0 aestd.math.var *= @s aestd.math.in

scoreboard players operation #aestd.lerp.t*v1 aestd.math.var = @s aestd.math.var
scoreboard players operation #aestd.lerp.t*v1 aestd.math.var *= @s aestd.math.in2

scoreboard players operation @s aestd.math.out = #aestd.lerp.(1-t)*v0 aestd.math.var
scoreboard players operation @s aestd.math.out += #aestd.lerp.t*v1 aestd.math.var
scoreboard players operation @s aestd.math.out /= $1000 aestd.math.var
