# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

execute anchored eyes run summon minecraft:fireball ^ ^ ^1 {Tags: ["aestd.new"]}
execute anchored eyes positioned ^ ^ ^7 as @e[type=minecraft:fireball, tag=aestd.new, limit=1] run function aestd1:entity/set_power_from_position
data modify entity @e[type=minecraft:fireball, tag=aestd.new, limit=1] Owner set from entity @s UUID
execute as @e[type=minecraft:fireball, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/shoot_fireball/set_owner_and_direction_v1
data remove storage aestd:data Owner

playsound minecraft:entity.ghast.shoot master @a