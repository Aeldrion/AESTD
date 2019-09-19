# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Sets the motion of the executing entity towards the context position
# The magnitude of the motion vector is defined by distance to context position
# Further than 40 blocks away, direction is not guaranteed to be exact due to Motion resetting values above 10
# WARNING: Does not work on players

# Get coordinates
function aestd:context/get_position_scale50
function aestd:entity/get_position_scale50

# Calculate delta
execute store result score @s aestd.math.var run scoreboard players operation #aestd aestd.pos.x -= @s aestd.pos.x
execute store result score @s aestd.math.var2 run scoreboard players operation #aestd aestd.pos.y -= @s aestd.pos.y
execute store result score @s aestd.math.var3 run scoreboard players operation #aestd aestd.pos.z -= @s aestd.pos.z

# Truncate pos (Motion caps at 10 and resets values above 10 to 0)
scoreboard players set @s[scores={aestd.math.var=2000..}] aestd.math.var 2000
scoreboard players set @s[scores={aestd.math.var2=2000..}] aestd.math.var2 2000
scoreboard players set @s[scores={aestd.math.var3=2000..}] aestd.math.var3 2000

# Set motion
execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s aestd.math.var
execute store result entity @s Motion[1] double 0.005 run scoreboard players get @s aestd.math.var2
execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s aestd.math.var3
