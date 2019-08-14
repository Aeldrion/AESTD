# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Teleports the executing player to the highest block matching the x and z coordinates of the context position

kill 000ae57d-da7a-9ac4-0000-000000000002
summon minecraft:area_effect_cloud ~ 256 ~ {Tags:["aestd","aestd.marker"],UUIDLeast:2L,UUIDMost:3067078466247364L}
execute as 000ae57d-da7a-9ac4-0000-000000000002 run function aestd:entity/teleport_surface
execute at 000ae57d-da7a-9ac4-0000-000000000002 run teleport @s ~ ~ ~
