# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

tag @e[type=minecraft:fireball, tag=aestd.fireball.last_shot, limit=1] remove aestd.fireball.last_shot

summon minecraft:fireball ^ ^ ^1 {Tags: ["aestd.new", "aestd.fireball.last_shot"], direction: [0.0d, 0.0d, 0.0d]}

data modify storage aestd:data Owner.UUIDMost set from entity @s UUIDMost
data modify storage aestd:data Owner.UUIDLeast set from entity @s UUIDLeast
execute as @e[type=minecraft:fireball, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/shoot_fireball/set_owner_and_direction_v1
data remove storage aestd:data Owner

playsound minecraft:entity.ghast.shoot master @a