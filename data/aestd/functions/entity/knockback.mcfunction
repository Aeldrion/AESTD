# Written by Aeldrion, Minecraft 19w05a
# Simulates the hitting of an entity from another at context position

# WARNING: Does not work on players


# Calculate difference between context and entity
function aestd:context/get_position
scoreboard players operation @s aestd.motion.x = @s aestd.coords.x
scoreboard players operation @s aestd.motion.z = @s aestd.coords.z

function aestd:entity/get_position
scoreboard players operation @s aestd.motion.x -= @s aestd.coords.x
scoreboard players operation @s aestd.motion.z -= @s aestd.coords.z

scoreboard players set @s aestd.motion.y 300

# Compare abs(dx) and abs(dz)
scoreboard players operation @s aestd.math.in = @s aestd.motion.x
function aestd:math/absolute
scoreboard players operation @s aestd.math.var = @s aestd.math.out

scoreboard players operation @s aestd.math.in = @s aestd.motion.z
function aestd:math/absolute
scoreboard players operation @s aestd.math.var2 = @s aestd.math.out

execute if score @s aestd.math.var > @s aestd.math.var2 run tag @s add aestd.knockback.x_greater_than_z

# Scale to 500
scoreboard players set #300 aestd.math.var 300

execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.z *= #300 aestd.math.var
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.z /= @s aestd.motion.x
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s aestd.motion.x 300

execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.x *= #300 aestd.math.var
execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.x /= @s aestd.motion.z
execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s aestd.motion.z 300

tag @s remove aestd.knockback.x_greater_than_z

# Set motion
function aestd:entity/set_motion
