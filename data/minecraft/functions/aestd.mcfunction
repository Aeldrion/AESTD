tellraw @a {"text": "================", "color": "green", "bold": true}
tellraw @a {"text": "AESTD v1.0 by Aeldrion", "color": "green"}
tellraw @a "\n"
tellraw @a {"text": "Technical details:", "bold": true}
tellraw @a [{"text": " Version ID: "}, {"score": {"name": "#aestd.version", "objective": "aestd.version"}, "color": "gold"}]
tellraw @a [{"text": " Storage version: "}, {"score": {"name": "#aestd.storage_version", "objective": "aestd.version"}, "color": "gold"}]
tellraw @a [{"text": " Scoreboard version: "}, {"score": {"name": "#aestd.scoreboard_version", "objective": "aestd.version"}, "color": "gold"}]
tellraw @a [{"text": " Save chunk version: "}, {"score": {"name": "#aestd.save_chunk_version", "objective": "aestd.version"}, "color": "gold"}]
tellraw @a [{"text": " Function library version: "}, {"score": {"name": "#aestd.function_library_version", "objective": "aestd.version"}, "color": "gold"}]
tellraw @a [{"text": " Save chunk location: "}, {"text": "-30000000 ~ 7777", "clickEvent": {"action": "run_command", "value": "/teleport @s[gamemode=spectator] -30000000 ~ 7777"}, "color": "light_purple"}]
tellraw @a "\n"
tellraw @a {"text": "Credits:", "bold": true}
tellraw @a {"text": " Created and tested by Aeldrion", "clickEvent": {"action": "open_url", "value": "htps://www.youtube.com/Aeldrion"}}
tellraw @a {"text": " Biome loot table by AmberW (/r/MinecraftCommands)"}
tellraw @a {"text": " [#aestd1:all] tags by Alex³ (/r/MinecraftCommands)"}
tellraw @a "\n"
tellraw @a {"text": "Links:", "bold": true}
tellraw @a [" ", {"text": "AESTD wiki", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://minecraft.gamepedia.com/User:Aeldrion/Projects/AESTD"}}]
tellraw @a [" ", {"text": "GitHub repository", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://www.github.com/Aeldrion/AESTD"}}]
tellraw @a [" ", {"text": "AESTD Discord server", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://discord.gg/KJet4xF"}}]
tellraw @a {"text": " ^ Prefered network for help, bugs and feedback", "color": "gray"}
tellraw @a "\n"
tellraw @a {"text": "================", "color": "green", "bold": true}
tellraw @a {"text": "Enabled modules:", "color": "green"}
tellraw @a "\n"
function #aestd.core:display_modules
