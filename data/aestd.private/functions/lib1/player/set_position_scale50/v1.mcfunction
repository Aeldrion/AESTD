# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

tag @s add aestd.player.setting_position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.player.position_cloud"],UUIDLeast:0L,UUIDMost:3067078466247364L}
execute at @s as 000ae57d-da7a-9ac4-0000-000000000000 run function aestd.private:lib1/player/set_player_position_scale50/teleport_player_v1
tag @s remove aestd.player.setting_position
