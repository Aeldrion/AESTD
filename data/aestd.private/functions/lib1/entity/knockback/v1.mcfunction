# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# Calculate difference between context and entity
function aestd1:entity/get_position_scale50
scoreboard players operation @s aestd.motion.x = @s aestd.pos.x
scoreboard players operation @s aestd.motion.z = @s aestd.pos.z

function aestd1:context/get_position_scale50
scoreboard players operation @s aestd.motion.x -= @s aestd.pos.x
scoreboard players operation @s aestd.motion.z -= @s aestd.pos.z

scoreboard players set @s aestd.motion.y 300

# Compare abs(dx) and abs(dz)
scoreboard players operation @s aestd.math.in = @s aestd.motion.x
function aestd1:math/absolute
scoreboard players operation @s aestd.math.var = @s aestd.math.out

scoreboard players operation @s aestd.math.in = @s aestd.motion.z
function aestd1:math/absolute
scoreboard players operation @s aestd.math.var2 = @s aestd.math.out

execute if score @s aestd.math.var > @s aestd.math.var2 run tag @s add aestd.knockback.x_greater_than_z

# Scale to 300
scoreboard players set $300 aestd.math.var 300

execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.z *= $300 aestd.math.var
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.z /= @s aestd.math.var
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s[scores={aestd.motion.x=..-1}] aestd.motion.x -300
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s[scores={aestd.motion.x=1..}] aestd.motion.x 300

execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.x *= $300 aestd.math.var
execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation @s aestd.motion.x /= @s aestd.math.var2
execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s[scores={aestd.motion.z=..-1}] aestd.motion.z -300
execute unless entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players set @s[scores={aestd.motion.z=1..}] aestd.motion.z 300

tag @s remove aestd.knockback.x_greater_than_z

# Set motion
function aestd1:entity/set_motion
