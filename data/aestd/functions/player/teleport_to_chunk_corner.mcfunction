# Written by Aeldrion, Minecraft 1.14
# Teleports a player to the minimum x and z coordinates in the chunk it is in

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd.new"]}
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1] run function aestd:entity/teleport_to_chunk_corner
execute positioned as @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=aestd.new,limit=1]
