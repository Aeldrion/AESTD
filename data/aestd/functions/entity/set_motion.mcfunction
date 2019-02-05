# Written by Aeldrion, Minecraft 18w43c
# Loads the sender's motion from its motion scores divided by 1000
# Input: aestd.motion.x|aestd.motion.y|aestd.motion.z, output: sender

# WARNING: Does not work on players

data merge entity @s[type=minecraft:arrow] {inGround:0b,Color:-1}
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s aestd.motion.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s aestd.motion.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s aestd.motion.z
