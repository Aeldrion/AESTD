# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute if entity @s run scoreboard players operation #aestd aestd.random.max = @s aestd.random.max

scoreboard players operation #aestd.lcg.seed aestd.math.var *= #aestd.lcg.multiplier aestd.math.var
scoreboard players operation #aestd.lcg.seed aestd.math.var += #aestd.lcg.increment aestd.math.var
scoreboard players operation #aestd.lcg.seed aestd.math.var %= #aestd.lcg.modulus aestd.math.var

scoreboard players operation #aestd aestd.random = #aestd.lcg.seed aestd.math.var
scoreboard players operation #aestd aestd.random %= #aestd aestd.random.max

execute if entity @s run scoreboard players operation @s aestd.random = #aestd aestd.random