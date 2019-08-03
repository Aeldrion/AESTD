# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the knockback resistance chance (in percents) of the executing player (default = 0)
# Stacks with attribute modifiers
# Knockback resistance is reset at death
# Input: aestd.player.kbr

execute if data entity @s Inventory[{Slot:103b}] run tag @s add aestd.wears_helmet
execute if entity @s[tag=aestd.wears_helmet] run scoreboard players operation #aestd.save aestd.var = @s aestd.item.slot
execute if entity @s[tag=aestd.wears_helmet] run scoreboard players set @s aestd.item.slot 103
execute if entity @s[tag=aestd.wears_helmet] run function aestd:item/save
replaceitem entity @s armor.head minecraft:iron_helmet{AttributeModifiers:[{Name:"generic.knockbackResistance",AttributeName:"generic.knockbackResistance",Amount:1.0f,Slot:"head",UUIDLeast:105192004L,UUIDMost:1102180519091920L}]}
execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[0].Amount float 0.01 run scoreboard players remove @s aestd.player.kbr 100

data get entity @s

replaceitem entity @s armor.head minecraft:air
execute if entity @s[tag=aestd.wears_helmet] run function aestd:item/load
scoreboard players operation @s[tag=aestd.wears_helmet] aestd.item.slot = #aestd.save aestd.var

tag @s remove aestd.wears_helmet
