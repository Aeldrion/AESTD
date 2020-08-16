execute store result storage aestd:data Rotation[0] float 1 run scoreboard players get $in.rotation.yaw aestd
execute store result storage aestd:data Rotation[1] float 1 run scoreboard players get $in.rotation.pitch aestd
data modify entity @s Rotation set from storage aestd:data Rotation