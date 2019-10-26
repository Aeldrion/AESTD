# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

data modify storage aestd:private Item set value {id: "minecraft:player_head", Count: 1b, Slot: 0b, tag: {SkullOwner: {Name: ""}}}
data modify storage aestd:private Item.tag.SkullOwner set from storage aestd:data PlayerName
data modify block -30000000 0 7777 Items append from storage aestd:private Item
loot replace entity @s armor.head 1 mine -30000000 0 7777 minecraft:air{drop_contents: 1b}
