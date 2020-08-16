data modify storage aestd:data Motion set from entity @s Motion

execute store result score $out.motion.x aestd run data get storage aestd:data Motion[0] 1000
execute store result score $out.motion.y aestd run data get storage aestd:data Motion[1] 1000
execute store result score $out.motion.z aestd run data get storage aestd:data Motion[2] 1000