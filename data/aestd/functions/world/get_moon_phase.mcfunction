# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Calculates the moon phase of the current night/upcoming night, updates at sunrise
# Output: aestd.time.moon

scoreboard players set $8 aestd.math.var 8
execute store result score #aestd aestd.time.moon run time query day
scoreboard players operation #aestd aestd.time.moon %= $8 aestd.math.var
# If no entity is executing the next command, the score is still saved to #aestd
scoreboard players operation @s aestd.time.moon = #aestd aestd.time.moon

# 0: full moon
# 1: waning gibbous
# 2: last quarter
# 3: waning crescent
# 4: new moon
# 5: waxing crescent
# 6: first quarter
# 7: waxing gibbous
