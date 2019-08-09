# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Summons an area_effect_cloud entity at given coordinates for this tick only with tag aestd.marker
# This marker can be targeted with the UUID 000ae57d-da7a-9ac4-0000-000000000001
# There can only be a single marker at the same time
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

kill 000ae57d-da7a-9ac4-0000-000000000001

summon minecraft:area_effect_cloud 1519204 1 0 {Tags:["aestd","aestd.marker"],UUIDLeast:1L,UUIDMost:3067078466247364L}

scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.x = @s aestd.coords.x
scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.y = @s aestd.coords.y
scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.z = @s aestd.coords.z

execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.x = #aestd aestd.coords.x
execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.y = #aestd aestd.coords.y
execute unless entity @s run scoreboard players operation 000ae57d-da7a-9ac4-0000-000000000001 aestd.coords.z = #aestd aestd.coords.z

execute as 000ae57d-da7a-9ac4-0000-000000000001 run function aestd:entity/set_position
