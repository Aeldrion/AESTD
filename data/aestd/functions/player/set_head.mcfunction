# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Places a player head on the executing player's head slot, replacing any helmet the player may be wearing. The skin corresponds to the player name saved in storage (see function aestd:player/get_name)

data modify storage aestd:private Item set value {id: "minecraft:player_head", Count: 1b, Slot: 0b, tag: {SkullOwner: {Name: ""}}}
data modify storage aestd:private Item.tag.SkullOwner set from storage aestd:data PlayerName
data modify block -30000000 0 7777 Items append from storage aestd:private Item
loot replace entity @s armor.head 1 mine -30000000 0 7777 minecraft:air{drop_contents: 1b}
