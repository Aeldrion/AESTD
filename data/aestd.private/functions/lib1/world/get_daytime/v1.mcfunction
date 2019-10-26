# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute store result score #aestd aestd.time run time query daytime
execute if score #aestd aestd.time matches 0..12000 run scoreboard players set #aestd aestd.time.dayp 0
execute if score #aestd aestd.time matches 12000..13000 run scoreboard players set #aestd aestd.time.dayp 1
execute if score #aestd aestd.time matches 13000..23000 run scoreboard players set #aestd aestd.time.dayp 2
execute if score #aestd aestd.time matches 23000..23999 run scoreboard players set #aestd aestd.time.dayp 3
# If no entity is executing the next command, the score is still saved to #aestd
scoreboard players operation @s aestd.time.dayp = #aestd aestd.time.dayp
