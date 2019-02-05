# Written by Aeldrion, Minecraft 19w05a
# Places necessary blocks in the save chunk at 1519204, 0

setblock 1519204 2 0 minecraft:orange_shulker_box{CustomName:"{\"text\":\"Inventory manipulation shulker box\"}"}
fill 1519204 3 0 1519204 6 0 minecraft:air
setblock 1519204 6 0 minecraft:jukebox{RecordItem:{id:"minecraft:command_block",Count:1b,tag:{aestd:{name:"data_item",PlayerName:"",PlayerUUID:"",PlayerUUIDLeast:0,PlayerUUIDMost:0,SavedItem:{},Items:[]}}}}

scoreboard players set #aestd.chunk_setup aestd.var 1
tellraw @a {"text":"AESTD was successfully loaded!","color":"green"}
function #aestd:save_chunk_setup
