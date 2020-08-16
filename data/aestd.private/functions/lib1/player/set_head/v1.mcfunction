# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

data modify storage aestd:data Item set value {id: "minecraft:player_head", Count: 1b, Slot: 0b, tag: {SkullOwner: {Name: ""}}}
data modify storage aestd:data Item.tag.SkullOwner set from storage aestd:data PlayerName
data modify block -30000000 0 7777 Items append from storage aestd:data Item
loot replace entity @s armor.head 1 mine -30000000 0 7777 minecraft:air{drop_contents: 1b}
