# Written by Aeldrion, Minecraft 1.14
# Places necessary blocks in the save chunk at 1519204, 0

fill 1519203 1 -1 1519203 7 1 minecraft:bedrock
fill 1519203 1 -1 1519205 7 -1 minecraft:bedrock
fill 1519205 1 -1 1519205 7 1 minecraft:bedrock
fill 1519203 1 1 1519205 7 1 minecraft:bedrock
setblock 1519204 1 0 minecraft:bedrock
setblock 1519204 7 0 minecraft:bedrock

setblock 1519204 6 0 minecraft:jukebox{RecordItem:{id:"minecraft:command_block",Count:1b,tag:{aestd:{VERSION:-1}}}}
function aestd.internal/load/update_jukebox

setblock 1519204 2 0 minecraft:orange_shulker_box{CustomName:"{\"text\":\"Inventory manipulation shulker box\"}"}
fill 1519204 4 0 1519204 5 0 minecraft:air
setblock 1519204 3 0 minecraft:oak_sign

scoreboard players set #aestd.chunk_setup aestd.var 1
tellraw @a {"text":"AESTD was successfully loaded!","color":"green"}
function #aestd:save_chunk_setup
