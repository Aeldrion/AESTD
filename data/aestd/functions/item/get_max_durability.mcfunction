# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Returns the durability of an item (see aestd:item/save for slot index and details)
# This will only work for vanilla items
# Input: aestd.item.slot, output: aestd.item.drblt

function aestd:item/save

execute if data storage aestd:data Item{id:"minecraft:wooden_pickaxe"} run scoreboard players set @s aestd.item.drblt 59
execute if data storage aestd:data Item{id:"minecraft:stone_pickaxe"} run scoreboard players set @s aestd.item.drblt 130
execute if data storage aestd:data Item{id:"minecraft:iron_pickaxe"} run scoreboard players set @s aestd.item.drblt 250
execute if data storage aestd:data Item{id:"minecraft:golden_pickaxe"} run scoreboard players set @s aestd.item.drblt 32
execute if data storage aestd:data Item{id:"minecraft:diamond_pickaxe"} run scoreboard players set @s aestd.item.drblt 1561

execute if data storage aestd:data Item{id:"minecraft:wooden_sword"} run scoreboard players set @s aestd.item.drblt 59
execute if data storage aestd:data Item{id:"minecraft:stone_sword"} run scoreboard players set @s aestd.item.drblt 130
execute if data storage aestd:data Item{id:"minecraft:iron_sword"} run scoreboard players set @s aestd.item.drblt 250
execute if data storage aestd:data Item{id:"minecraft:golden_sword"} run scoreboard players set @s aestd.item.drblt 32
execute if data storage aestd:data Item{id:"minecraft:diamond_sword"} run scoreboard players set @s aestd.item.drblt 1561

execute if data storage aestd:data Item{id:"minecraft:wooden_axe"} run scoreboard players set @s aestd.item.drblt 59
execute if data storage aestd:data Item{id:"minecraft:stone_axe"} run scoreboard players set @s aestd.item.drblt 130
execute if data storage aestd:data Item{id:"minecraft:iron_axe"} run scoreboard players set @s aestd.item.drblt 250
execute if data storage aestd:data Item{id:"minecraft:golden_axe"} run scoreboard players set @s aestd.item.drblt 32
execute if data storage aestd:data Item{id:"minecraft:diamond_axe"} run scoreboard players set @s aestd.item.drblt 1561

execute if data storage aestd:data Item{id:"minecraft:wooden_hoe"} run scoreboard players set @s aestd.item.drblt 59
execute if data storage aestd:data Item{id:"minecraft:stone_hoe"} run scoreboard players set @s aestd.item.drblt 130
execute if data storage aestd:data Item{id:"minecraft:iron_hoe"} run scoreboard players set @s aestd.item.drblt 250
execute if data storage aestd:data Item{id:"minecraft:golden_hoe"} run scoreboard players set @s aestd.item.drblt 32
execute if data storage aestd:data Item{id:"minecraft:diamond_hoe"} run scoreboard players set @s aestd.item.drblt 1561

execute if data storage aestd:data Item{id:"minecraft:wooden_shovel"} run scoreboard players set @s aestd.item.drblt 59
execute if data storage aestd:data Item{id:"minecraft:stone_shovel"} run scoreboard players set @s aestd.item.drblt 130
execute if data storage aestd:data Item{id:"minecraft:iron_shovel"} run scoreboard players set @s aestd.item.drblt 250
execute if data storage aestd:data Item{id:"minecraft:golden_shovel"} run scoreboard players set @s aestd.item.drblt 32
execute if data storage aestd:data Item{id:"minecraft:diamond_shovel"} run scoreboard players set @s aestd.item.drblt 1561

execute if data storage aestd:data Item{id:"minecraft:diamond_helmet"} run scoreboard players set @s aestd.item.drblt 363
execute if data storage aestd:data Item{id:"minecraft:diamond_chestplate"} run scoreboard players set @s aestd.item.drblt 528
execute if data storage aestd:data Item{id:"minecraft:diamond_leggings"} run scoreboard players set @s aestd.item.drblt 495
execute if data storage aestd:data Item{id:"minecraft:diamond_boots"} run scoreboard players set @s aestd.item.drblt 429
execute if data storage aestd:data Item{id:"minecraft:iron_helmet"} run scoreboard players set @s aestd.item.drblt 165
execute if data storage aestd:data Item{id:"minecraft:iron_chestplate"} run scoreboard players set @s aestd.item.drblt 240
execute if data storage aestd:data Item{id:"minecraft:iron_leggings"} run scoreboard players set @s aestd.item.drblt 225
execute if data storage aestd:data Item{id:"minecraft:iron_boots"} run scoreboard players set @s aestd.item.drblt 195
execute if data storage aestd:data Item{id:"minecraft:chainmail_helmet"} run scoreboard players set @s aestd.item.drblt 165
execute if data storage aestd:data Item{id:"minecraft:chainmail_chestplate"} run scoreboard players set @s aestd.item.drblt 240
execute if data storage aestd:data Item{id:"minecraft:chainmail_leggings"} run scoreboard players set @s aestd.item.drblt 225
execute if data storage aestd:data Item{id:"minecraft:chainmail_boots"} run scoreboard players set @s aestd.item.drblt 195
execute if data storage aestd:data Item{id:"minecraft:golden_helmet"} run scoreboard players set @s aestd.item.drblt 77
execute if data storage aestd:data Item{id:"minecraft:golden_chestplate"} run scoreboard players set @s aestd.item.drblt 112
execute if data storage aestd:data Item{id:"minecraft:golden_leggings"} run scoreboard players set @s aestd.item.drblt 105
execute if data storage aestd:data Item{id:"minecraft:golden_boots"} run scoreboard players set @s aestd.item.drblt 91
execute if data storage aestd:data Item{id:"minecraft:leather_helmet"} run scoreboard players set @s aestd.item.drblt 55
execute if data storage aestd:data Item{id:"minecraft:leather_chestplate"} run scoreboard players set @s aestd.item.drblt 80
execute if data storage aestd:data Item{id:"minecraft:leather_leggings"} run scoreboard players set @s aestd.item.drblt 75
execute if data storage aestd:data Item{id:"minecraft:leather_boots"} run scoreboard players set @s aestd.item.drblt 65
execute if data storage aestd:data Item{id:"minecraft:turtle_helmet"} run scoreboard players set @s aestd.item.drblt 276

execute if data storage aestd:data Item{id:"minecraft:elytra"} run scoreboard players set @s aestd.item.drblt 431
execute if data storage aestd:data Item{id:"minecraft:shears"} run scoreboard players set @s aestd.item.drblt 238
execute if data storage aestd:data Item{id:"minecraft:fishing_rod"} run scoreboard players set @s aestd.item.drblt 64
execute if data storage aestd:data Item{id:"minecraft:carrot_on_a_stick"} run scoreboard players set @s aestd.item.drblt 25
execute if data storage aestd:data Item{id:"minecraft:flint_and_steel"} run scoreboard players set @s aestd.item.drblt 64
execute if data storage aestd:data Item{id:"minecraft:bow"} run scoreboard players set @s aestd.item.drblt 384
execute if data storage aestd:data Item{id:"minecraft:shield"} run scoreboard players set @s aestd.item.drblt 336
execute if data storage aestd:data Item{id:"minecraft:trident"} run scoreboard players set @s aestd.item.drblt 250
