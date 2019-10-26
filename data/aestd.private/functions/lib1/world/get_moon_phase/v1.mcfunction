# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players set $8 aestd.math.var 8
execute store result score #aestd aestd.time.moon run time query day
scoreboard players operation #aestd aestd.time.moon %= $8 aestd.math.var
# If no entity is executing the next command, the score is still saved to #aestd
scoreboard players operation @s aestd.time.moon = #aestd aestd.time.moon
