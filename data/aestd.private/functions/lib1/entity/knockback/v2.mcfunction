# Calculate difference between context and entity
scoreboard players operation #save.out.pos.x aestd = $out.position.x aestd
scoreboard players operation #save.out.pos.z aestd = $out.positionz aestd

function aestd1:entity/get_position_scale50
scoreboard players operation #motion.x aestd = $out.position.x
scoreboard players operation #motion.z aestd = $out.position.z

function aestd1:context/get_position_scale50
scoreboard players operation #motion.x aestd -= $out.position.x
scoreboard players operation #motion.z aestd -= $out.position.z

scoreboard players operation $out.position.x aestd = #save.out.pos.x aestd
scoreboard players operation $out.position.z aestd = #save.out.pos.z aestd

# Compare |dx| and |dz|
scoreboard players operation #|dx| aestd = #motion.x aestd
execute if score #|dx| aestd matches ..-1 run scoreboard players operation #|dx| aestd *= $-1 aestd.const
scoreboard players operation #|dz| aestd = #motion.z aestd
execute if score #|dz| aestd matches ..-1 run scoreboard players operation #|dz| aestd *= $-1 aestd.const

execute if score #|dx| aestd > #|dz| aestd run tag @s add aestd.knockback.x_greater_than_z

# Scale to 300
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation #motion.z aestd *= $300 aestd.const
execute if entity @s[tag=aestd.knockback.x_greater_than_z] run scoreboard players operation #motion.z aestd /= #|dx| aestd
execute if entity @s[tag=aestd.knockback.x_greater_than_z] if score #motion.x aestd matches ..0 run scoreboard players set #motion.x aestd -300
execute if entity @s[tag=aestd.knockback.x_greater_than_z] if score #motion.x aestd matches 0.. run scoreboard players set #motion.x aestd 300

execute if entity @s[tag=!aestd.knockback.x_greater_than_z] run scoreboard players operation #motion.x aestd *= $300 aestd.const
execute if entity @s[tag=!aestd.knockback.x_greater_than_z] run scoreboard players operation #motion.x aestd /= #|dz| aestd
execute if entity @s[tag=!aestd.knockback.x_greater_than_z] if score #motion.z aestd matches ..0 run scoreboard players set #motion.z aestd -300
execute if entity @s[tag=!aestd.knockback.x_greater_than_z] if score #motion.z aestd matches 0.. run scoreboard players set #motion.z aestd 300

tag @s remove aestd.knockback.x_greater_than_z

# Set motion
execute store result storage aestd:data Motion[0] double 0.001 run scoreboard players get #motion.x aestd
data modify storage aestd:data Motion[1] set value 0.3d
execute store result storage aestd:data Motion[2] double 0.001 run scoreboard players get #motion.z aestd
data modify entity @s Motion set from storage aestd:data Motion