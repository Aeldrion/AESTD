# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Save both inputs to var and var2
execute if entity @s[tag=!aestd.math.running_power] run scoreboard players operation @s aestd.math.var = @s aestd.math.in
execute if entity @s[tag=!aestd.math.running_power] run scoreboard players operation @s aestd.math.var2 = @s aestd.math.in2
execute if entity @s[tag=!aestd.math.running_power] run scoreboard players operation @s aestd.math.out = @s aestd.math.in
tag @s[tag=!aestd.math.running_power] add aestd.math.running_power

# Multiply output by var
execute if score @s aestd.math.var2 matches 2..30 run scoreboard players operation @s aestd.math.out *= @s aestd.math.var
scoreboard players remove @s aestd.math.var2 1
execute if score @s aestd.math.var2 matches 2..29 run function aestd1:math/power

# Stop function
execute unless score @s aestd.math.var2 matches 2..29 run tag @s remove aestd.math.running_power
