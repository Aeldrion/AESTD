# Written by Aeldrion, Minecraft 19w05a
# Calculates the sine of an integer (in degrees) multiplied by 1000
# Example: 0 returns 0, 30 returns 500, 240 returns -866
# Input: aestd.math.in, output: aestd.math.out

# Summon the cloud and apply rotation
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aestd","aestd.sine.cloud"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] aestd.rot.x = @s aestd.math.in
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] run function aestd:entity/set_rotation

# Get z position before and after teleportation
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] run function aestd:entity/get_position
scoreboard players operation #aestd aestd.coords.x = @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] aestd.coords.x
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] at @s run teleport @s ^ ^ ^1000
execute as @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] run function aestd:entity/get_position

# Calculate delta
scoreboard players operation @s aestd.math.out = #aestd aestd.coords.x
scoreboard players operation @s aestd.math.out -= @e[type=minecraft:area_effect_cloud,tag=aestd.sine.cloud,limit=1] aestd.coords.x
