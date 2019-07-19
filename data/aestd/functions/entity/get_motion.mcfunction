# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Saves the sender's motion multiplied by 1000 to its motion scores
# Input: sender, output: aestd.motion.x|aestd.motion.y|aestd.motion.z

execute store result score @s aestd.motion.x run data get entity @s Motion[0] 1000
execute store result score @s aestd.motion.y run data get entity @s Motion[1] 1000
execute store result score @s aestd.motion.z run data get entity @s Motion[2] 1000

