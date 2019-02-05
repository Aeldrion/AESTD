# Written by Aeldrion, Minecraft 19w05a
# Asks players to mark the save chunk for force loading

tellraw @a [{"text":"","color":"dark_red"},{"text":"--- WARNING ---\nAESTD is not successfully loaded. This may cause datapacks to malfunction. Please click "},{"text":"here","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/forceload add 1519204 0"}},{"text":" to finish the loading process. If you cannot run this command, ask an administrator on your server."}]
scoreboard players set #aestd.chunk_setup aestd.var 0
# Loop it as long as the chunk isn't loaded
schedule function aestd.internal:load/check_save_chunk 15s
