# Written by Aeldrion, Minecraft 19w05a
# Places necessary blocks in the save chunk at 1519204, 0

setblock 1519204 2 0 minecraft:orange_shulker_box{CustomName:"{\"text\":\"Inventory manipulation shulker box\"}"}
fill 1519204 3 0 1519204 5 0 minecraft:air

execute unless block 1519204 6 0 minecraft:jukebox run setblock 1519204 6 0 minecraft:jukebox{RecordItem:{id:"minecraft:command_block",Count:1b,tag:{aestd:{name:"data_item",PlayerName:"",PlayerUUID:"",EntityUUIDLeast:0L,EntityUUIDMost:0L,SavedItem:{},Items:[],String:"",List:[],Int:0}}}}
# Future tags will go here in data merge commands for backwards compatibility

scoreboard players set #aestd.chunk_setup aestd.var 1
tellraw @a {"text":"AESTD was successfully loaded!","color":"green"}
function #aestd:save_chunk_setup
