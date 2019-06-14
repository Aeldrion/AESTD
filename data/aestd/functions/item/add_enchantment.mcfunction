# Written by Aeldrion, Minecraft 1.14
# Adds an enchantment to an item (see aestd:item/save for slot index)
# Input: sender|aestd.item.slot|aestd.item.ench|aestd.item.lvl

execute unless entity @s[tag=aestd.preformatted_text] run data merge block 1519204 3 0 {Text1:'{"nbt":"RecordItem.tag.aestd.text","block":"1519204 6 0"}'}

function aestd:item/save
execute unless data block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem merge value {tag:{Enchantments:[]}}

execute if score @s aestd.item.ench matches 0 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:protection",lvl:1s}]}
execute if score @s aestd.item.ench matches 1 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
execute if score @s aestd.item.ench matches 2 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}
execute if score @s aestd.item.ench matches 3 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:blast_protection",lvl:1s}]}
execute if score @s aestd.item.ench matches 4 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}
execute if score @s aestd.item.ench matches 5 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:respiration",lvl:1s}]}
execute if score @s aestd.item.ench matches 6 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]}
execute if score @s aestd.item.ench matches 7 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:thorns",lvl:1s}]}
execute if score @s aestd.item.ench matches 8 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:depth_strider",lvl:1s}]}
execute if score @s aestd.item.ench matches 9 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:frost_walker",lvl:1s}]}
execute if score @s aestd.item.ench matches 10 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s aestd.item.ench matches 11 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
execute if score @s aestd.item.ench matches 12 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:smite",lvl:1s}]}
execute if score @s aestd.item.ench matches 13 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:1s}]}
execute if score @s aestd.item.ench matches 14 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:knockback",lvl:1s}]}
execute if score @s aestd.item.ench matches 15 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}
execute if score @s aestd.item.ench matches 16 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:looting",lvl:1s}]}
execute if score @s aestd.item.ench matches 17 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:sweeping",lvl:1s}]}
execute if score @s aestd.item.ench matches 18 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}
execute if score @s aestd.item.ench matches 19 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute if score @s aestd.item.ench matches 20 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}
execute if score @s aestd.item.ench matches 21 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:fortune",lvl:1s}]}
execute if score @s aestd.item.ench matches 22 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:power",lvl:1s}]}
execute if score @s aestd.item.ench matches 23 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:punch",lvl:1s}]}
execute if score @s aestd.item.ench matches 24 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:flame",lvl:1s}]}
execute if score @s aestd.item.ench matches 25 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:infinity",lvl:1s}]}
execute if score @s aestd.item.ench matches 26 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]}
execute if score @s aestd.item.ench matches 27 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:lure",lvl:1s}]}
execute if score @s aestd.item.ench matches 28 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:loyalty",lvl:1s}]}
execute if score @s aestd.item.ench matches 29 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:impaling",lvl:1s}]}
execute if score @s aestd.item.ench matches 30 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:riptide",lvl:1s}]}
execute if score @s aestd.item.ench matches 31 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:channeling",lvl:1s}]}
execute if score @s aestd.item.ench matches 32 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:multishot",lvl:1s}]}
execute if score @s aestd.item.ench matches 33 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:quick_charge",lvl:1s}]}
execute if score @s aestd.item.ench matches 34 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:piercing",lvl:1s}]}
execute if score @s aestd.item.ench matches 35 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:mending",lvl:1s}]}
execute if score @s aestd.item.ench matches 36 run data modify block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments append value {Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}

execute if score @s aestd.item.lvl matches 2..32767 store result block 1519204 6 0 RecordItem.tag.aestd.SavedItem.tag.Enchantments[-1].lvl 1 short

function aestd:item/load

# Enchantments use the following values for aestd.item.ench, corresponding to their protocol ID:
# 0 - Protection
# 1 - Fire Protection
# 2 - Feather Falling
# 3 - Blast Protection
# 4 - Projectile Protection
# 5 - Respiration
# 6 - Aqua Affinity
# 7 - Thorns
# 8 - Depth Strider
# 9 - Frost Walker
# 10 - Curse of Binding
# 11 - Sharpness
# 12 - Smite
# 13 - Bane of Arthropods
# 14 - Knockback
# 15 - Fire Aspect
# 16 - Looting
# 17 - Sweeping Edge
# 18 - Efficiency
# 19 - Silk Touch
# 20 - Unbreaking
# 21 - Fortune
# 22 - Power
# 23 - Punch
# 24 - Flame
# 25 - Infinity
# 26 - Luck of the Sea
# 27 - Lure
# 28 - Loyalty
# 29 - Impaling
# 30 - Riptide
# 31 - Channeling
# 32 - Multishot
# 33 - Quick Charge
# 34 - Piercing
# 35 - Mending
# 36 - Curse of Vanishing