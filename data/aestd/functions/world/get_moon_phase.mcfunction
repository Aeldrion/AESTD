# Written by Aeldrion, Minecraft 19w05a
# Calculates the moon phase of the current day
# Input: time, output: aestd.time.moon

execute store result score #aestd aestd.time.moon run time query day
scoreboard players set #aestd aestd.time 8
scoreboard players operation #aestd aestd.time.moon %= #aestd aestd.time
# If no entity is executing the next command, the score is still saved to #aestd
scoreboard players operation @s aestd.time.moon = #aestd aestd.time.moon

# Documentation
# 0: full moon
# 1: waning gibbous
# 2: last quarter
# 3: waning crescent
# 4: new moon
# 5: waxing crescent
# 6: first quarter
# 7: waxing gibbous
