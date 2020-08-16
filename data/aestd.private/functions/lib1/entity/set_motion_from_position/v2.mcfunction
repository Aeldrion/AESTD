# Get coordinates
data modify storage aestd:data Pos set from entity @s Pos
execute store result score #entity.pos.x aestd run data get storage aestd:data Pos[0] 50
execute store result score #entity.pos.y aestd run data get storage aestd:data Pos[1] 50
execute store result score #entity.pos.z aestd run data get storage aestd:data Pos[2] 50

execute in minecraft:overworld run summon minecraft:area_effect_cloud -30000000 0 7776 {Tags: ["aestd", "aestd.get_position", "aestd.new"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aestd.get_position, tag=aestd.new] run function aestd.private:lib1/entity/set_motion_from_position/get_context_position_v2
execute store result score #context.pos.x aestd run data get storage aestd:data Pos[0] 50
execute store result score #context.pos.y aestd run data get storage aestd:data Pos[1] 50
execute store result score #context.pos.z aestd run data get storage aestd:data Pos[2] 50

# Calculate delta
execute store result score #dx aestd run scoreboard players operation #context.pos.x aestd -= #entity.pos.x aestd
execute store result score #dy aestd run scoreboard players operation #context.pos.y aestd -= #entity.pos.y aestd
execute store result score #dz aestd run scoreboard players operation #context.pos.z aestd -= #entity.pos.z aestd

# Truncate pos (Motion caps at 10 and resets values above 10 to 0)
execute if score #dx aestd matches 2000.. run scoreboard players set #dx aestd 2000
execute if score #dy aestd matches 2000.. run scoreboard players set #dy aestd 2000
execute if score #dz aestd matches 2000.. run scoreboard players set #dz aestd 2000

# Set motion
execute store result storage aestd:data Motion[0] double 0.005 run scoreboard players get #dx aestd
execute store result storage aestd:data Motion[1] double 0.005 run scoreboard players get #dy aestd
execute store result storage aestd:data Motion[2] double 0.005 run scoreboard players get #dz aestd
data modify entity @s Motion set from storage aestd:data Motion