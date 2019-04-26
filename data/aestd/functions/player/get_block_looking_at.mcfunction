# Written by Aeldrion, Minecraft 1.14
# Finds the block the player is looking at, if no block is to find, resets scores
# Output: aestd.coords.x|aestd.coords.y|aestd.coords.z

scoreboard players set @s[scores={aestd.rcdistance=257..}] aestd.rcdistance 256
scoreboard players set @s[scores={aestd.rcdistance=..0}] aestd.rcdistance 3
execute unless score @s aestd.rcdistance matches -2147483648..2147483647 run scoreboard players set @s aestd.rcdistance 64

scoreboard players reset #aestd aestd.rcdistance
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function aestd:player/get_block_looking_at/raycast
