# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

kill 000ae57d-da7a-9ac4-0000-000000000001
summon minecraft:area_effect_cloud -30000000 0 7776 {Tags:["aestd","aestd.marker"],UUIDLeast:1L,UUIDMost:3067078466247364L}

scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.x = @s aestd.pos.x
scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.y = @s aestd.pos.y
scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.z = @s aestd.pos.z

execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.x = #aestd aestd.pos.x
execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.y = #aestd aestd.pos.y
execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.pos.z = #aestd aestd.pos.z

execute as 000ae57d-da7a-9ac4-0000-000000000001 run function aestd1:entity/set_position
