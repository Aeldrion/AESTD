execute store result data aestd:data Motion[0] double 0.001 run scoreboard players get $in.motion.x aestd
execute store result data aestd:data Motion[1] double 0.001 run scoreboard players get $in.motion.y aestd
execute store result data aestd:data Motion[2] double 0.001 run scoreboard players get $in.motion.z aestd

data modify entity @s Motion set from storage aestd:data Motion