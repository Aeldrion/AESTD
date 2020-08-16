# Spawn a marker
summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd", "aestd.context.rotation_cloud"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.context.rotation_cloud, limit=1] run function aestd.private:lib1/context/get_rotation/kill_and_get_rotation_v2

# Save position to #aestd score
execute store result score $rotation.yaw aestd run data get storage aestd:data Rotation[0]
execute store result score $rotation.pitch aestd run data get storage aestd:data Rotation[1]