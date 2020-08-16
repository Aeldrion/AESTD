execute anchored eyes run summon minecraft:egg ^ ^ ^1 {Tags: ["aestd.new"]}
execute anchored eyes positioned ^ ^ ^7 as @e[type=minecraft:egg, tag=aestd.new, limit=1] run function aestd1:entity/set_motion_from_position
data modify entity @e[type=minecraft:egg, tag=aestd.new, limit=1] Owner set from entity @s UUID
data modify entity @e[type=minecraft:egg, tag=aestd.new, limit=1] Air set value 1s
tag @e[type=minecraft:egg, tag=aestd.new, limit=1] remove aestd.new
playsound minecraft:entity.egg.throw master @s ~ ~ ~ 1 0.5