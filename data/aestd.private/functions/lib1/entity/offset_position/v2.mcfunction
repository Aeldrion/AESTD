# Save position/vector scores
scoreboard players operation #save.pos.x aestd = $in.pos.x aestd
scoreboard players operation #save.pos.y aestd = $in.pos.y aestd
scoreboard players operation #save.pos.z aestd = $in.pos.z aestd
scoreboard players operation #save.vec.x aestd = $in.vector.x aestd
scoreboard players operation #save.vec.y aestd = $in.vector.y aestd
scoreboard players operation #save.vec.z aestd = $in.vector.z aestd

# Divide vector scores by 20
scoreboard players operation $in.vector.x aestd /= $20 aestd.const
scoreboard players operation $in.vector.y aestd /= $20 aestd.const
scoreboard players operation $in.vector.z aestd /= $20 aestd.const

# Offset position
data modify storage aestd:data Pos set from entity @s Pos
execute store result score $in.pos.x aestd run data get storage aestd:data Pos[0] 50
execute store result score $in.pos.y aestd run data get storage aestd:data Pos[1] 50
execute store result score $in.pos.z aestd run data get storage aestd:data Pos[2] 50
scoreboard players operation $in.pos.x aestd += $in.vector.x aestd
scoreboard players operation $in.pos.y aestd += $in.vector.y aestd
scoreboard players operation $in.pos.z aestd += $in.vector.z aestd
execute if entity @s[type=minecraft:player] run function aestd1:player/set_position_scale50
execute unless entity @s[type=minecraft:player] run function aestd1:entity/set_position_scale50

# Restore position/vector scores
scoreboard players operation $in.pos.x aestd = #save.pos.x aestd
scoreboard players operation $in.pos.y aestd = #save.pos.y aestd
scoreboard players operation $in.pos.z aestd = #save.pos.z aestd
scoreboard players operation $in.vector.x aestd = #save.vector.x aestd
scoreboard players operation $in.vector.y aestd = #save.vector.y aestd
scoreboard players operation $in.vector.z aestd = #save.vector.z aestd