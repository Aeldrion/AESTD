# Written by Aeldrion, Minecraft 19w05a
# Summons an area_effect_cloud entity at given coordinates for this tick only with tag aestd.marker
# There can only be a single marker at the same time
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

kill @e[type=minecraft:area_effect_cloud,tag=aestd.marker]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.marker"]}
# Set position from sender's score, if there is one
execute if entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[0] double 1 run scoreboard players get @s aestd.coords.x
execute if entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[1] double 1 run scoreboard players get @s aestd.coords.y
execute if entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[2] double 1 run scoreboard players get @s aestd.coords.z
# Set position from generic score, if there is no sender
execute unless entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[0] double 1 run scoreboard players get #aestd aestd.coords.x
execute unless entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[1] double 1 run scoreboard players get #aestd aestd.coords.y
execute unless entity @s store result entity @e[type=minecraft:area_effect_cloud,tag=aestd.marker,limit=1] Pos[2] double 1 run scoreboard players get #aestd aestd.coords.z
