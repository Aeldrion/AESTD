# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute anchored eyes run summon minecraft:egg ^ ^ ^1 {Tags: ["aestd.new"], pickup: 1b}
execute anchored eyes positioned ^ ^ ^7 as @e[type=minecraft:egg, tag=aestd.new, limit=1] run function aestd1:entity/set_motion_from_position

data modify storage aestd:private Owner.UUIDMost set from entity @s UUIDMost
data modify storage aestd:private Owner.UUIDLeast set from entity @s UUIDLeast
execute as @e[type=minecraft:egg, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/shoot_arrow/set_owner_uuid_v1
data remove storage aestd:private Owner

data modify entity @e[type=minecraft:egg, tag=aestd.new, limit=1] Air set value 1s

tag @e[type=minecraft:egg, tag=aestd.new, limit=1] remove aestd.new
playsound minecraft:entity.egg.throw master @s ~ ~ ~ 1 0.5
