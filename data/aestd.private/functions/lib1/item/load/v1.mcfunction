# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

execute if entity @s[type=minecraft:player, tag=!aestd.item.container] run function aestd.private:lib1/item/load/load_player_item
execute if entity @s[type=minecraft:item, tag=!aestd.item.container] run function aestd.private:lib1/item/load/load_dropped_item
execute if entity @s[type=#aestd.private:mobs, tag=!aestd.item.container] run function aestd.private:lib1/item/load/load_mob_item
execute if entity @s[tag=aestd.item.container] run function aestd.private:lib1/item/load/load_container_item

execute unless entity @s run summon minecraft:item ~ ~ ~ {Tags: ["aestd.new"], Item: {id: "minecraft:stone", Count: 1b}}
execute unless entity @s run data modify entity @e[type=minecraft:item, tag=aestd.new, limit=1, sort=nearest] Item set from storage aestd:data Item
execute unless entity @s run tag @e[type=minecraft:item, tag=aestd.new, limit=1, sort=nearest] remove aestd.new
