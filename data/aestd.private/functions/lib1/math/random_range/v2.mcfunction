# Remove minimum
scoreboard players operation #delta aestd.math = $in.max aestd.math
scoreboard players operation #delta aestd.math -= $in.min aestd.math

# Calculate random int
execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aestd", "aestd.random.cloud"]}
execute unless entity @e[type=minecraft:area_effect_cloud, tag=aestd.random.cloud, limit=1] run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd", "aestd.random.cloud"]}
execute store result score #uuid aestd.math run data get entity @e[type=minecraft:area_effect_cloud, tag=aestd.random.cloud, limit=1] UUID[3] 0.0000000001
kill @e[type=minecraft:area_effect_cloud, tag=aestd.random.cloud, limit=1]

# Modulus and readd minimum
scoreboard players operation $out aestd.math = #uuid aestd.math
scoreboard players operation $out aestd.math %= #delta aestd.math
scoreboard players operation $out aestd.math += $in.min aestd.math
