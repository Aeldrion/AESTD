# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Saves the context position to the executing entity's rotation scores
# Output: aestd.rot.x|aestd.rot.y

# Spawn a marker
summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd", "aestd.context.position_cloud"]}
teleport @e[type=minecraft:area_effect_cloud, tag=aestd.context.position_cloud, limit=1] -30000000 0 7776 ~ ~
data modify storage aestd:private Rotation set from entity @e[type=minecraft:area_effect_cloud, tag=aestd.context.position_cloud, limit=1] Rotation

# Save position to #aestd score
execute store result score #aestd aestd.pos.x run data get storage aestd:private Rotation[0]
execute store result score #aestd aestd.pos.y run data get storage aestd:private Rotation[1]

# Save score to executing entity, if there is one
scoreboard players operation @s aestd.rot.x = #aestd aestd.rot.x
scoreboard players operation @s aestd.rot.y = #aestd aestd.rot.y
