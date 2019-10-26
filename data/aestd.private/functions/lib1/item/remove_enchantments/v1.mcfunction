# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

function aestd1:item/save
execute if score @s aestd.list_mode matches 0 run data remove storage aestd:data Item.tag.Enchantments[0]
execute if score @s aestd.list_mode matches -1 run data remove storage aestd:data Item.tag.Enchantments[-1]
execute unless score @s aestd.list_mode matches -1..0 run data remove storage aestd:data Item.tag.Enchantments
function aestd1:item/load
