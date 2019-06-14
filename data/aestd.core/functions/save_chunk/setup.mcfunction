# Written by Aeldrion, Minecraft 1.14
# Places necessary blocks in the save chunk at 1519204, 0

# Build bedrock protection
fill 1519203 1 -1 1519205 7 1 minecraft:bedrock hollow

# Place blocks
setblock 1519204 6 0 minecraft:jukebox{RecordItem:{id:"minecraft:command_block",Count:1b,tag:{aestd:{VERSION:-1}}}}
setblock 1519204 2 0 minecraft:orange_shulker_box
setblock 1519204 3 0 minecraft:oak_sign
fill 1519204 4 0 1519204 5 0 minecraft:air

# Update the jukebox
function aestd.core:save_chunk/update

# Mark as setup and call functions
scoreboard players set #aestd.chunk_setup aestd.var 1
function #aestd:save_chunk_setup
