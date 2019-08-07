# Author: Amberw / Aeldrion
# Version: 1.14.4
# Project: AESTD documentation

# This function is not meant to be used in a world. It contains samples of codes that use the functions from AESTD's function library so that you can understand what each function does and how it can be used.
# These samples of codes are used on the wiki (https://minecraft.gamepedia.com/User:Aeldrion/Projects/AESTD/Function_libary)



####### ENTITY FUNCTIONS


## aestd:entity/anger

# This function will make the executing entity angry against the nearest player
# Does not work if a player is running this function, because AESTD is unfortunately unable to modulate the reality outside of your computer screen
execute as @p run function aestd:entity/get_uuid
function aestd:entity/anger



## aestd:entity/damage

# This function will damage the executing entity by 6HP, make it angry against the nearest player and set it on fire
# Does not work if a player is running this function, because aestd:entity/damage is only for non-player entities, due to technical limitations
scoreboard players set @s aestd.damage 600
tag @s add aestd.damage.hurt_by_player
tag @s add aestd.damage.fire
execute as @p run function aestd:entity/get_uuid
function aestd:entity/damage
tag @s remove aestd.damage.hurt_by_player
tag @s remove aestd.damage.fire



## aestd:entity/fake_damage

# This function will simulate the damaging of all cows that stand on concrete
execute as @e[type=minecraft:cow] at @s if block ~ ~-1 ~ #aestd:concrete run function aestd:entity/fake_damage



## aestd:entity/get_direction

# This function will display the nearest fireball's vertical direction in the chat
execute as @e[type=minecraft:fireball,limit=1,sort=nearest] run function aestd:entity/get_direction
execute as @e[type=minecraft:fireball,limit=1,sort=nearest] run tellraw @a {"score":{"name":"@s","objective":"aestd.dir.y"}}



## aestd:entity/get_distance

# This function displays to all players their distance to the nearest creeper
execute as @a at @s at @e[type=minecraft:creeper,limit=1,sort=nearest] run function aestd:entity/get_distance
execute as @a run title @s actionbar {"score":{"name":"@s","objective":"aestd.math.out"}}
# Executing entity: the player, context position: the position of the nearest creeper (because the command is ran as the player, at the creeper)
# Therefore, the measured distance is the distance from the player to the creeper
# The first at only ensures the selected creeper is the nearest to the player



## aestd:entity/get_motion

# This function will display end rod particles if the nearest arrow is going upwards, flame particles if it is going downwards
execute as @e[type=minecraft:arrow,limit=1,sort=nearest] run function aestd:entity/get_motion
execute as @e[type=minecraft:arrow,limit=1,sort=nearest] at @s[scores={aestd.motion.y=1..}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:arrow,limit=1,sort=nearest] at @s[scores={aestd.motion.y=..-1}] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force



## aestd:entity/get_motion_magnitude

# This function will display flame particles at arrows whose motion is more than 1
execute as @e[type=minecraft:arrow] run function aestd:entity/get_motion_magnitude
execute at @e[type=minecraft:arrow,scores={aestd.math.out=1000..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force



## aestd:entity/get_position

# This function will display a player's position in their actionbar if they are holding a compass
tag @a[nbt={SelectedItem:{id:"minecraft:compass"}}] add holding_compass
execute as @a[tag=holding_compass] run function aestd:entity/get_position
execute as @a[tag=holding_compass] run title @s actionbar [{"score":{"name":"@s","objective":"aestd.coords.x"}}," ",{"score":{"name":"@s","objective":"aestd.coords.y"}}," ",{"score":{"name":"@s","objective":"aestd.coords.z"}}]
tag @a remove holding_compass



## aestd:entity/get_uuid

# This function isn't useful on its own but the information it retrieves can then be used by other functions.
# Look at aestd:entity/anger and aestd:entity/damage for examples.



## aestd:entity/knockback

# This function simulates the hitting of the nearest cow by the nearest player (see also aestd:entity/damage)
execute as @e[type=minecraft:cow,limit=1,sort=nearest] at @p run function aestd:entity/knockback
execute as @p run function aestd:entity/get_uuid
scoreboard players set @e[type=minecraft:cow,limit=1,sort=nearest] aestd.damage 100 
tag @e[type=minecraft:cow,limit=1,sort=nearest] add aestd.damage.hurt_by_entity
execute as @e[type=minecraft:cow,limit=1,sort=nearest] run function aestd.damage.hurt_by_entity



## aestd:entity/offset_position

# This function will have the same effect as teleport @s ~4 ~ ~-2
scoreboard players set @s aestd.delta.x 4
scoreboard players set @s aestd.delta.y 0
scoreboard players set @s aestd.delta.z -2
function aestd:entity/offset_position

# Another, more useful example: this function will teleport the executing entity randomly in the current chunk
# (see random functions and aestd:entity/teleport_to_chunk_corner)
scoreboard players set @s aestd.random.max 32
function aestd:math/random_lcg
scoreboard players operation @s aestd.delta.x = @s aestd.random
function aestd:math/random_lcg
scoreboard players operation @s aestd.delta.z = @s aestd.random
scoreboard players set @s aestd.random.max 256
function aestd:math/random_lcg
scoreboard players operation @s aestd.delta.y = @s aestd.random
function aestd:entity/teleport_to_chunk_corner
execute at @s run teleport @s ~ 0 ~
function aestd:entity/offset_position



## aestd:entity/set_direction

# This function mirrors the nearest fireball's vertical direction (if it is going upwards, it will go downwards at the same speed instead)
execute as @e[type=minecraft:fireball,limit=1,sort=nearest] run function aestd:entity/get_direction
scoreboard players set #-1 aestd.math.var -1
# Multiply by -1
scoreboard players operation @e[type=minecraft:fireball,limit=1,sort=nearest] aestd.dir.y *= #-1 aestd.math.var
execute as @e[type=minecraft:fireball,limit=1,sort=nearest] run function aestd:entity/set_direction



## aestd:entity/set_head

# This function copies the nearest player's head to the executing entity
execute as @p run function aestd:player/get_name
function aestd:entity/set_head



## aestd:entity/set_head_to_block

# This function places on a mob's head the block it is standing on
execute positioned ~ ~-1 ~ run function aestd:block/get_block_id
function aestd:entity/set_head_to_block



## aestd:entity/set_motion

# This function gives a random motion to the executing entity
scoreboard players set @s aestd.random.min -500
scoreboard players set @s aestd.random.max 500
function aestd:math/random_range_lcg
scoreboard players operation @s aestd.motion.x = @s aestd.random
function aestd:math/random_range_lcg
scoreboard players operation @s aestd.motion.y = @s aestd.random
function aestd:math/random_range_lcg
scoreboard players operation @s aestd.motion.z = @s aestd.random



## aestd:entity/set_motion_from_position

# This function shoots creepers to the nearest player
execute as @e[type=minecraft:creeper] at @p run function aestd:entity/set_motion_from_position



## aestd:entity/set_moton_from_rotation

# This function shoots creepers to the nearest player
execute as @e[type=minecraft:creeper] facing entity @p eyes run function aestd:entity/set_motion_from_rotation



## aestd:entity/set_motion_magnitude

# This function triples the motion of all mobs
execute as @e[type=#aestd:mobs] run function aestd:entity/get_motion_magnitude
scoreboard players set #3 aestd.math.var 3
execute as @e[type=#aestd:mobs] run scoreboard players operation @s aestd.math.out *= #3 aestd.math.var
execute as @e[type=#aestd:mobs] run scoreboard players operation @s aestd.math.in = @s aestd.math.out
execute as @e[type=#aestd:mobs] run function aestd:entity/set_motion_magnitude

# Simpler example: this function gives all creepers a constant motion magnitude of 1
scoreboard players set @e[type=minecraft:creeper] aestd.math.in 1000
execute as @e[type=minecraft:creeper] run function aestd:entity/set_motion_magnitude



## aestd:entity/set_position

# This function teleports all arrows that hit the ground back to where they were shot
execute as @e[type=minecraft:arrow,tag=!shot] run function aestd:entity/get_position
tag @e[type=minecraft:arrow] add shot
execute as @e[type=minecraft:arrow,tag=shot,nbt={inGround:1b},tag=!in_ground] run function aestd:entity/set_position
tag @e[type=minecraft:arrow,tag=shot,nbt={inGround:1b}] add in_ground



## aestd:entity/teleport_surface

# This function teleports all players who hold a clock to the surface
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}}] at @s run function aestd:entity/teleport_surface






##### ITEM FUNCTIONS


## aestd:item/add_count

# This function reduces the count of a player's or mob's offhand item
scoreboard players set @s aestd.item.slot -2
scoreboard players set @s aestd.item.count -1
function aestd:item/add_count



## aestd:item/add_damage

# This function damages all player's selected items
scoreboard players set @a aestd.item.dmg 5
scoreboard players set @a aestd.item.slot -1
execute as @a run function aestd:item/add_damage



## aestd:item/add_enchantment

# This function adds sharpness V to a player's or mob's held item
scoreboard players set @s aestd.item.slot -1
scoreboard players set @s aestd.item.ench 11
scoreboard players set @s aestd.item.lvl 5
function aestd:item/add_enchantment



## aestd:item/add_lore

# This function adds the text Hello world to the item contained in the fifth hotbar slot of the nearest player, with default formatting then with a different color and style.
data modify block 1519204 6 0 RecordItem.tag.aestd.text set value "Hello world"
scoreboard players set @p aestd.item.slot 4
function aestd:item/add_lore 
data modify block 1519204 6 0 RecordItem.tag.aestd.text set value '{"text":"Hello world","color":"aqua","italic":false}'
tag @s add aestd.preformatted_text
function aestd:item/add_lore
tag @s remove aestd.preformatted_text



## aestd:item/load

# This function moves all players' offhand item to their head slot
scoreboard players set @a aestd.item.slot -2
execute as @a run function aestd:item/save
scoreboard players set @a aestd.item.slot 103
execute as @a run function aestd:item/load



## aestd:item/merge_nbt

# This function sets a player's head item's name to hello
data modify block 1519204 6 0 RecordItem.tag.aestd.nbt set value {display:{Name:'"hello"'}}
scoreboard players set @s aestd.item.slot 103
function aestd:item/merge_nbt



## aestd:item/remove_attribute_modifiers

# This function removes the last attribute modifier of the item in the center of a dropper
tag @s add aestd.item.container
scoreboard players set @s aestd.item.slot 4
scoreboard players set @s aestd.list_mode -1
execute if block ~ ~ ~ minecraft:dropper run function aestd:item/remove_attribute_modifiers
tag @s remove aestd.item.container



## aestd:item/remove_enchantments

# This function removes all enchantments on the player's helmet
scoreboard players set @s aestd.item.slot 103
scoreboard players set @s aestd.list_mode 1
function aestd:item/remove_enchantments



## aestd:item/save
# See aestd:item/load



## aestd:item/set_nbt

# Completely resets a player's head item NBT (damage, enchantments, modifiers, repair cost, etc) and sets its name to hello
data modify block 1519204 6 0 RecordItem.tag.aestd.nbt set value {display:{Name:'"hello"'}}
scoreboard players set @s aestd.item.slot 103
function aestd:item/set_nbt
