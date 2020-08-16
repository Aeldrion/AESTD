execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aestd", "aestd.random.cloud"]}
execute unless entity @e[type=minecraft:area_effect_cloud, tag=aestd.random.cloud, limit=1] run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd", "aestd.random.cloud"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.random.cloud, limit=1] run function aestd.private:lib1/math/random/kill_and_get_uuid_v2
scoreboard players operation $out aestd.math %= $in.max aestd.math