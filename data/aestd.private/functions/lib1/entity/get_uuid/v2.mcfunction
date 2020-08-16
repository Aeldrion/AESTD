data modify storage aestd:data UUID set from entity @s UUID

execute store result score $out.uuid[0] aestd run data get storage aestd:data UUID[0]
execute store result score $out.uuid[1] aestd run data get storage aestd:data UUID[1]
execute store result score $out.uuid[2] aestd run data get storage aestd:data UUID[2]
execute store result score $out.uuid[3] aestd run data get storage aestd:data UUID[3] 