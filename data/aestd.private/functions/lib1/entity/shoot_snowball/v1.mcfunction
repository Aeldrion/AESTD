# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

execute anchored eyes run summon minecraft:snowball ^ ^ ^1 {Tags: ["aestd.new"]}
execute anchored eyes positioned ^ ^ ^7 as @e[type=minecraft:snowball, tag=aestd.new, limit=1] run function aestd1:entity/set_motion_from_position

data modify storage aestd:private UUID set from storage aestd:data UUID
function aestd1:entity/get_uuid
execute as @e[type=minecraft:snowball, tag=aestd.new, limit=1] run function aestd1:entity/projectile/set_owner_uuid
data modify storage aestd:data UUID set from storage aestd:private UUID

data modify entity @e[type=minecraft:egg, tag=aestd.new, limit=1] Air set value 1s

tag @e[type=minecraft:snowball, tag=aestd.new, limit=1] remove aestd.new
playsound minecraft:entity.snowball.throw master @s ~ ~ ~ 1 0.5
