# Written by Aeldrion, Minecraft 19w05a
# Asks players to mark the save chunk for force loading

tellraw @a [{"text":"","color":"dark_red"},{"text":"--- WARNING ---\nAESTD is not fully loaded. This may cause datapacks to malfunction. Please click here to finish the loading process. If you cannot run this command, ask an administrator on your server.","clickEvent":{"action":"run_command","value":"/execute in minecraft:overworld run forceload add 1519204 0"}}]
scoreboard players set #aestd.chunk_setup aestd.var 0
# Loop it as long as the chunk isn't loaded
schedule function aestd.internal:load/check_save_chunk 15s
