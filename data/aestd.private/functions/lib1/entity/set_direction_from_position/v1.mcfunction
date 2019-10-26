# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Get coordinates
function aestd1:context/get_position_scale50
function aestd1:entity/get_position_scale50

# Calculate delta
execute store result score @s aestd.math.var run scoreboard players operation #aestd aestd.pos.x -= @s aestd.pos.x
execute store result score @s aestd.math.var2 run scoreboard players operation #aestd aestd.pos.y -= @s aestd.pos.y
execute store result score @s aestd.math.var3 run scoreboard players operation #aestd aestd.pos.z -= @s aestd.pos.z

# Truncate pos (direction caps at 10 and resets values above 10 to 0)
scoreboard players set @s[scores={aestd.math.var=2000..}] aestd.math.var 2000
scoreboard players set @s[scores={aestd.math.var2=2000..}] aestd.math.var2 2000
scoreboard players set @s[scores={aestd.math.var3=2000..}] aestd.math.var3 2000

# Set direction
execute store result entity @s direction[0] double 0.005 run scoreboard players get @s aestd.math.var
execute store result entity @s direction[1] double 0.005 run scoreboard players get @s aestd.math.var2
execute store result entity @s direction[2] double 0.005 run scoreboard players get @s aestd.math.var3
