# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Teleports the player to their position scores
# Input: aestd.coords.x|aestd.coords.y|aestd.coords.z

tag @s add aestd.player.setting_position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.player.position_cloud"],UUIDLeast:0L,UUIDMost:3067078466247364L}
execute at @s as 000ae57d-da7a-9ac4-0000-000000000000 run function aestd.internal:set_player_position
tag @s remove aestd.player.setting_position
