# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the max health of the executing player (in health points/half hearts)
# Stacks with the extra health effect, but doesn't stack with other maxHealth attribute modifiers
# Negative values (including 0) are not allowed
# Max health is reset at death
# Input: aestd.player.mhp

# Check if the player doesn't have any maxHealth attributes. This is important and can fuck things up badly in many ways if you play with that
function aestd.internal:max_health_modifiers

# Save headgear/Apply helmet
execute if score #aestd.proceed aestd.var matches 1 if data entity @s Inventory[{Slot:103b}] run tag @s add aestd.wears_helmet
execute if score #aestd.proceed aestd.var matches 1 if entity @s[tag=aestd.wears_helmet] run scoreboard players operation #aestd.save aestd.var = @s aestd.item.slot
execute if score #aestd.proceed aestd.var matches 1 if entity @s[tag=aestd.wears_helmet] run scoreboard players set @s aestd.item.slot 103
execute if score #aestd.proceed aestd.var matches 1 if entity @s[tag=aestd.wears_helmet] run function aestd:item/save
execute if score #aestd.proceed aestd.var matches 1 run replaceitem entity @s armor.head minecraft:iron_helmet{AttributeModifiers:[{Name:"generic.maxHealth",AttributeName:"generic.maxHealth",Amount:0.0f,Slot:"head",UUIDLeast:105192004L,UUIDMost:130124080501122008L}]}
execute if score #aestd.proceed aestd.var matches 1 store result entity @s[scores={aestd.player.mhp=1..}] Inventory[{Slot:103b}].tag.AttributeModifiers[0].Amount float 1 run scoreboard players remove @s aestd.player.mhp 20

# Serialize NBT
execute if score #aestd.proceed aestd.var matches 1 run data get entity @s

# Remove helmet/Restore previous headgear
execute if score #aestd.proceed aestd.var matches 1 run replaceitem entity @s armor.head minecraft:air
execute if score #aestd.proceed aestd.var matches 1 if entity @s[tag=aestd.wears_helmet] run function aestd:item/load
execute if score #aestd.proceed aestd.var matches 1 run scoreboard players operation @s[tag=aestd.wears_helmet] aestd.item.slot = #aestd.save aestd.var

tag @s remove aestd.wears_helmet
