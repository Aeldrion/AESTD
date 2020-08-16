data modify storage aestd:data Rotation set from entity @s Rotation

execute store result score $out.rotation.yaw aestd run data get storage aestd:data Rotation[0]
execute store result score $out.rotation.pitch aestd run data get storage aestd:data Rotation[1]