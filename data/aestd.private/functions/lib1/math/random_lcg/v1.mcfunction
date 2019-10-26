# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players set #aestd.lcg.multiplier aestd.math.var 22695477
scoreboard players operation #aestd.lcg.seed aestd.math.var *= #aestd.lcg.multiplier aestd.math.var
scoreboard players add #aestd.lcg.seed aestd.math.var 1

scoreboard players operation @s aestd.random = #aestd.lcg.seed aestd.math.var
scoreboard players operation @s aestd.random %= @s aestd.random.max
