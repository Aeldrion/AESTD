# Written by Aeldrion, Minecraft 1.14
# Generates a random integer from 0 (included) to aestd.random.max (excluded)
# Input: aestd.random.max, output: aestd.random

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.random.cloud"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1] run summon minecraft:area_effect_cloud 1519204 0 0 {Tags:["aestd","aestd.random.cloud"]}

execute store result score @s aestd.random run data get entity @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1] UUIDMost 0.0000000001
kill @e[type=minecraft:area_effect_cloud,tag=aestd.random.cloud,limit=1]
scoreboard players operation @s aestd.random %= @s aestd.random.max
