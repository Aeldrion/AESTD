execute store result storage aestd:data Pos[0] double 0.02 run scoreboard players get $in.pos.x aestd
execute store result storage aestd:data Pos[1] double 0.02 run scoreboard players get $in.pos.y aestd
execute store result storage aestd:data Pos[2] double 0.02 run scoreboard players get $in.pos.z aestd
data modify entity @s Pos set from storage aestd:data Pos