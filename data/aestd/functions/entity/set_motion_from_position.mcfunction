# Written by Aeldrion, Minecraft 1.14
# Sets the motion of the sender towards the context position
# The magnitude of the motion vector is defined by distance to context position

# Get coordinates
tag @s add aestd.coords.scale_up
function aestd:context/get_position
function aestd:entity/get_position
tag @s remove aestd.coords.scale_up

# Calculate delta
execute store result score @s aestd.math.var run scoreboard players operation #aestd aestd.coords.x -= @s aestd.coords.x
execute store result score @s aestd.math.var2 run scoreboard players operation #aestd aestd.coords.y -= @s aestd.coords.y
execute store result score @s aestd.math.var3 run scoreboard players operation #aestd aestd.coords.z -= @s aestd.coords.z

# Set motion
execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s aestd.math.var
execute store result entity @s Motion[1] double 0.005 run scoreboard players get @s aestd.math.var2
execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s aestd.math.var3
