# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

tag @e[type=minecraft:arrow, tag=aestd.arrow.last_shot, limit=1] remove aestd.arrow.last_shot

execute if entity @s[type=minecraft:player, gamemode=!adventure, gamemode=!survival] run summon minecraft:arrow ^ ^ ^1 {Tags: ["aestd.new", "aestd.arrow.last_shot"], pickup: 2b}
execute if entity @s[type=minecraft:player, gamemode=!creative, gamemode=!spectator] run summon minecraft:arrow ^ ^ ^1 {Tags: ["aestd.new", "aestd.arrow.last_shot"], pickup: 1b}
execute unless entity @s[type=minecraft:player] run summon minecraft:arrow ^ ^ ^1 {Tags: ["aestd.new", "aestd.arrow.last_shot"], pickup: 0b}

execute if entity @s[type=minecraft:player] as @e[type=minecraft:arrow, tag=aestd.new, limit=1] positioned as @s positioned ^ ^ ^12 run function aestd1:entity/set_motion_from_position
execute unless entity @s[type=minecraft:player] as @e[type=minecraft:arrow, tag=aestd.new, limit=1] positioned as @s positioned ^ ^ ^6 run function aestd1:entity/set_motion_from_position

data modify storage aestd:private Owner.UUIDMost set from entity @s UUIDMost
data modify storage aestd:private Owner.UUIDLeast set from entity @s UUIDLeast
execute as @e[type=minecraft:arrow, tag=aestd.new, limit=1] run function aestd.private:lib1/entity/shoot_arrow/set_owner_uuid_v1
data remove storage aestd:private Owner

tag @e[type=minecraft:arrow, tag=aestd.new, limit=1] remove aestd.new
playsound minecraft:entity.arrow.shoot master @a