# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Get current time and remove input
execute store result score #aestd.daytime aestd.time run time query daytime
execute store result score #aestd.day aestd.time run time query day
scoreboard players set $24000 aestd.math.var 24000
scoreboard players operation #aestd.world_time aestd.time = #aestd.day aestd.time
scoreboard players operation #aestd.world_time aestd.time *= $24000 aestd.math.var
scoreboard players operation #aestd.world_time aestd.time += #aestd.daytime aestd.time

execute if entity @s run scoreboard players operation #aestd aestd.time = @s aestd.time
scoreboard players operation #aestd.world_time aestd.time -= #aestd aestd.time
scoreboard players operation #aestd aestd.time >< #aestd.world_time aestd.time

# Set time
function aestd1:world/set_time

# Reset score
scoreboard players operation #aestd aestd.time >< #aestd.world_time aestd.time