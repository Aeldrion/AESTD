# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

kill 000ae57d-da7a-9ac4-0000-000000000002
summon minecraft:area_effect_cloud ~ 256 ~ {Tags:["aestd","aestd.marker"],UUIDLeast:2L,UUIDMost:3067078466247364L}
execute as 000ae57d-da7a-9ac4-0000-000000000002 run function aestd1:entity/teleport_surface
execute at 000ae57d-da7a-9ac4-0000-000000000002 run teleport @s ~ ~ ~
