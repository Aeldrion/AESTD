# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

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
