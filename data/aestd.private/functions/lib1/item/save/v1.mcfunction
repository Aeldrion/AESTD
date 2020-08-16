# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

data modify storage aestd:data Item set value {id: "minecraft:air"}

execute if entity @s[type=minecraft:player,tag=!aestd.item.container] run function aestd.private:lib1/item/save/save_player_item
execute if entity @s[type=minecraft:item,tag=!aestd.item.container] run function aestd.private:inventory/save/save_dropped_item
execute if entity @s[type=#aestd.private:mobs,tag=!aestd.item.container] run function aestd.private:inventory/save/save_mob_item
execute if entity @s[tag=aestd.item.container] run function aestd.private:inventory/save/save_container_item

data remove storage aestd:data Item.Slot
