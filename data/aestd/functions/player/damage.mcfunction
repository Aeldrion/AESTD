# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Damages the executing player

execute store result score @s aestd.damage.hp run data get entity @s Health 100
scoreboard players operation @s aestd.damage.hp -= @s aestd.damage
tag @s[scores={aestd.damage.hp=..1}] add aestd.dies

# Set max halth to (hp-dmg) using a helmet
execute if data entity @s[tag=!aestd.dies] Inventory[{Slot:103b}] run tag @s add aestd.wears_helmet
execute if entity @s[tag=!aestd.dies,tag=aestd.wears_helmet] run scoreboard players operation #aestd.save aestd.var = @s aestd.item.slot
execute if entity @s[tag=!aestd.dies,tag=aestd.wears_helmet] run scoreboard players set @s aestd.item.slot 103
execute if entity @s[tag=!aestd.dies,tag=aestd.wears_helmet] run function aestd:item/save
replaceitem entity @s[tag=!aestd.dies] armor.head minecraft:iron_helmet{AttributeModifiers:[{Name:"generic.maxHealth",AttributeName:"generic.maxHealth",Amount:1.0f,Slot:"head",UUIDLeast:105192004L,UUIDMost:105120418091514L}]}
execute store result entity @s[tag=!aestd.dies] Inventory[{Slot:103b}].tag.AttributeModifiers[0].Amount float 0.01 run scoreboard players remove @s aestd.damage.hp 2000

# Serialize attribute and set health to max health
data get entity @s[tag=!aestd.dies]
effect give @s[tag=!aestd.dies] minecraft:health_boost 1 0
effect clear @s[tag=!aestd.dies] minecraft:health_boost

# Set helmet back
replaceitem entity @s[tag=!aestd.dies] armor.head minecraft:iron_helmet{AttributeModifiers:[{Name:"generic.maxHealth",AttributeName:"generic.maxHealth",Amount:0.0f,Slot:"head",UUIDLeast:105192004L,UUIDMost:105120418091514L}]}
data get entity @s[tag=!aestd.dies]
replaceitem entity @s[tag=!aestd.dies] armor.head minecraft:air
execute if entity @s[tag=!aestd.dies,tag=aestd.wears_helmet] run function aestd:item/load
execute if entity @s[tag=!aestd.dies,tag=aestd.wears_helmet] run scoreboard players operation @s aestd.item.slot = #aestd.save aestd.var

# Effects
kill @s[tag=aestd.dies]
execute at @s[tag=!aestd.dies] run playsound minecraft:entity.generic.hurt player @a

tag @s remove aestd.wears_helmet
tag @s remove aestd.dies

invalid command
