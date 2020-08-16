# Spawn a marker
execute unless blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run data remove storage aestd:data Pos
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aestd", "aestd.context.position_cloud"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.context.position_cloud, limit=1] run function aestd.private:lib1/context/get_position/kill_and_get_position_v2

# Save position to #aestd score
execute store result score $out.position.x aestd run data get storage aestd:data Pos[0]
execute store result score $out.position.y aestd run data get storage aestd:data Pos[1]
execute store result score $out.position.z aestd run data get storage aestd:data Pos[2]