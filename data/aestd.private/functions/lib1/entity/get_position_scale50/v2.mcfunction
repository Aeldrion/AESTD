data modify storage aestd:data Pos set from entity @s Pos

execute store result score $out.position.x aestd run data get storage aestd:data Pos[0] 50
execute store result score $out.position.y aestd run data get storage aestd:data Pos[1] 50
execute store result score $out.position.z aestd run data get storage aestd:data Pos[2] 50