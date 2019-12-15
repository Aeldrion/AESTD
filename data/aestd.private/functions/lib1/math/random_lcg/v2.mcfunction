# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players set #aestd.lcg.multiplier aestd.math.var 1630111353
scoreboard players set #aestd.lcg.increment aestd.math.var 1623164762
scoreboard players set #aestd.lcg.modulus aestd.math.var 2147483647

scoreboard players operation #aestd.lcg.x aestd.math.var *= #aestd.lcg.multiplier aestd.math.var
scoreboard players operation #aestd.lcg.x aestd.math.var += #aestd.lcg.increment aestd.math.var
scoreboard players operation #aestd.lcg.x aestd.math.var %= #aestd.lcg.modulus aestd.math.var

scoreboard players operation #aestd aestd.random = #aestd.lcg.x aestd.math.var
scoreboard players operation #aestd aestd.random %= @s aestd.random.max
scoreboard players operation @s aestd.random = #aestd aestd.random
