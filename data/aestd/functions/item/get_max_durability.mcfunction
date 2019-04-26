# Written by Aeldrion, Minecraft 1.14
# Returns the durability of an item (see aestd:item/save for slot index)
# Input: aestd.item.slot, output: aestd.item.drblt

function aestd:item/save

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:wooden_pickaxe"}}}}} run scoreboard players set @s aestd.item.drblt 59
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:stone_pickaxe"}}}}} run scoreboard players set @s aestd.item.drblt 130
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_pickaxe"}}}}} run scoreboard players set @s aestd.item.drblt 250
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_pickaxe"}}}}} run scoreboard players set @s aestd.item.drblt 32
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_pickaxe"}}}}} run scoreboard players set @s aestd.item.drblt 1561

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:wooden_sword"}}}}} run scoreboard players set @s aestd.item.drblt 59
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:stone_sword"}}}}} run scoreboard players set @s aestd.item.drblt 130
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_sword"}}}}} run scoreboard players set @s aestd.item.drblt 250
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_sword"}}}}} run scoreboard players set @s aestd.item.drblt 32
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_sword"}}}}} run scoreboard players set @s aestd.item.drblt 1561

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:wooden_axe"}}}}} run scoreboard players set @s aestd.item.drblt 59
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:stone_axe"}}}}} run scoreboard players set @s aestd.item.drblt 130
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_axe"}}}}} run scoreboard players set @s aestd.item.drblt 250
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_axe"}}}}} run scoreboard players set @s aestd.item.drblt 32
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_axe"}}}}} run scoreboard players set @s aestd.item.drblt 1561

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:wooden_hoe"}}}}} run scoreboard players set @s aestd.item.drblt 59
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:stone_hoe"}}}}} run scoreboard players set @s aestd.item.drblt 130
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_hoe"}}}}} run scoreboard players set @s aestd.item.drblt 250
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_hoe"}}}}} run scoreboard players set @s aestd.item.drblt 32
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_hoe"}}}}} run scoreboard players set @s aestd.item.drblt 1561

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:wooden_shovel"}}}}} run scoreboard players set @s aestd.item.drblt 59
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:stone_shovel"}}}}} run scoreboard players set @s aestd.item.drblt 130
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_shovel"}}}}} run scoreboard players set @s aestd.item.drblt 250
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_shovel"}}}}} run scoreboard players set @s aestd.item.drblt 32
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_shovel"}}}}} run scoreboard players set @s aestd.item.drblt 1561

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 363
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_chestplate"}}}}} run scoreboard players set @s aestd.item.drblt 528
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_leggings"}}}}} run scoreboard players set @s aestd.item.drblt 495
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:diamond_boots"}}}}} run scoreboard players set @s aestd.item.drblt 429
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 165
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_chestplate"}}}}} run scoreboard players set @s aestd.item.drblt 240
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_leggings"}}}}} run scoreboard players set @s aestd.item.drblt 225
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:iron_boots"}}}}} run scoreboard players set @s aestd.item.drblt 195
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:chainmail_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 165
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:chainmail_chestplate"}}}}} run scoreboard players set @s aestd.item.drblt 240
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:chainmail_leggings"}}}}} run scoreboard players set @s aestd.item.drblt 225
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:chainmail_boots"}}}}} run scoreboard players set @s aestd.item.drblt 195
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 77
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_chestplate"}}}}} run scoreboard players set @s aestd.item.drblt 112
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_leggings"}}}}} run scoreboard players set @s aestd.item.drblt 105
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:golden_boots"}}}}} run scoreboard players set @s aestd.item.drblt 91
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:leather_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 55
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:leather_chestplate"}}}}} run scoreboard players set @s aestd.item.drblt 80
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:leather_leggings"}}}}} run scoreboard players set @s aestd.item.drblt 75
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:leather_boots"}}}}} run scoreboard players set @s aestd.item.drblt 65
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:turtle_helmet"}}}}} run scoreboard players set @s aestd.item.drblt 276

execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:elytra"}}}}} run scoreboard players set @s aestd.item.drblt 431
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:shears"}}}}} run scoreboard players set @s aestd.item.drblt 238
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:fishing_rod"}}}}} run scoreboard players set @s aestd.item.drblt 64
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:carrot_on_a_stick"}}}}} run scoreboard players set @s aestd.item.drblt 25
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:flint_and_steel"}}}}} run scoreboard players set @s aestd.item.drblt 64
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:bow"}}}}} run scoreboard players set @s aestd.item.drblt 384
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:shield"}}}}} run scoreboard players set @s aestd.item.drblt 336
execute in minecraft:overworld if block 1519204 6 0 minecraft:jukebox{RecordItem:{tag:{aestd:{SavedItem:{id:"minecraft:trident"}}}}} run scoreboard players set @s aestd.item.drblt 250
