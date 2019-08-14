# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Removes a duration in ticks from the world time (opposite operation of time add)
# Input: aestd.time

# Get current time and remove input
execute store result score #aestd.daytime aestd.time run time query daytime
execute store result score #aestd.day aestd.time run time query day
scoreboard players set $24000 aestd.math.var 24000
scoreboard players operation #aestd.world_time aestd.time = #aestd.day aestd.time
scoreboard players operation #aestd.world_time aestd.time *= $24000 aestd.math.var
scoreboard players operation #aestd.world_time aestd.time += #aestd.daytime aestd.time

scoreboard players operation #aestd.world_time aestd.time -= @s aestd.time
scoreboard players operation @s aestd.time >< #aestd.world_time aestd.time
tellraw @a {"score":{"name":"@s","objective":"aestd.time"}}

# Set time
function aestd:world/set_time

# Reset score
scoreboard players operation @s aestd.time >< #aestd.world_time aestd.time