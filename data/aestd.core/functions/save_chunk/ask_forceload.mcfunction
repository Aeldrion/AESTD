# Written by Aeldrion, Minecraft 1.14
# Asks players to mark the save chunk for force loading

tellraw @a [{"text":"AESTD is not fully loaded yet! Please click here to finish the loading process. If you cannot run this command, ask an administrator on your server.","clickEvent":{"action":"run_command","value":"/execute in minecraft:overworld run forceload add 1519204 0"},"color":"gold","italic":true}]
# Loop it as long as the chunk isn't loaded
schedule function aestd.core:save_chunk/check_version 15s
