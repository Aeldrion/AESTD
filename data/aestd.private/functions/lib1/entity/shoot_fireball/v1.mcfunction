# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

tag @e[type=minecraft:fireball, tag=aestd.fireball.last_shot, limit=1] remove aestd.fireball.last_shot

summon minecraft:fireball ^ ^ ^1 {Tags: ["aestd.new", "aestd.fireball.last_shot"], direction: [0.0d, 0.0d, 0.0d]}

data modify storage aestd:private Owner.UUIDMost set from entity @s UUIDMost
data modify storage aestd:private Owner.UUIDLeast set from entity @s UUIDLeast
execute as @e[type=minecraft:fireball, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/shoot_fireball/set_owner_and_direction_v1
data remove storage aestd:private Owner

playsound minecraft:entity.ghast.shoot master @a