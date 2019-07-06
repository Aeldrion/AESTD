# Written by Aeldrion, Minecraft 1.14
# Sets up the scoreboard for AESTD


## GENERIC OBJECTIVES

scoreboard objectives remove aestd.var
scoreboard objectives remove aestd.recursion



## BLOCK FUNCTIONS

# get_block_id/set_block_id
scoreboard objectives remove aestd.block.id



## ENTITY FUNCTIONS

# get_position/set_position
scoreboard objectives remove aestd.coords.x
scoreboard objectives remove aestd.coords.y
scoreboard objectives remove aestd.coords.z

# damage
scoreboard objectives remove aestd.damage
scoreboard objectives remove aestd.damage.hp

# offset_position
scoreboard objectives remove aestd.delta.x
scoreboard objectives remove aestd.delta.y
scoreboard objectives remove aestd.delta.z

# get_direction/set_direction
scoreboard objectives remove aestd.dir.x
scoreboard objectives remove aestd.dir.y
scoreboard objectives remove aestd.dir.z

# get_local_height
scoreboard objectives remove aestd.height

# get_motion/set_motion
scoreboard objectives remove aestd.motion.x
scoreboard objectives remove aestd.motion.y
scoreboard objectives remove aestd.motion.z

# get_rotation/set_rotation
scoreboard objectives remove aestd.rot.x
scoreboard objectives remove aestd.rot.y



## CONTEXT FUNCTIONS

# get_biome
scoreboard objectives remove aestd.biome

# get_dimension
scoreboard objectives remove aestd.dimension



## MATH FUNCTIONS

# generic
scoreboard objectives remove aestd.math.in
scoreboard objectives remove aestd.math.in2
scoreboard objectives remove aestd.math.out
scoreboard objectives remove aestd.math.seed
scoreboard objectives remove aestd.math.var
scoreboard objectives remove aestd.math.var2
scoreboard objectives remove aestd.math.var3

# random/random_range/random_lcg
scoreboard objectives remove aestd.random
scoreboard objectives remove aestd.random.min
scoreboard objectives remove aestd.random.max

# vector
scoreboard objectives remove aestd.vector.x
scoreboard objectives remove aestd.vector.y
scoreboard objectives remove aestd.vector.z



## ITEM FUNCTIONS

# set_custom_model_data/remove_custom_model_data
scoreboard objectives remove aestd.item.cmd

# set_count
scoreboard objectives remove aestd.item.count

# set_damage/remove_damage
scoreboard objectives remove aestd.item.dmg
scoreboard objectives remove aestd.item.drblt

# load/save
scoreboard objectives remove aestd.item.slot



## PLAYER FUNCTIONS

# set_experience/remove_experience
scoreboard objectives remove aestd.player.xp



## WORLD FUNCTIONS

# get_weather
scoreboard objectives remove aestd.weather

# get_time
scoreboard objectives remove aestd.time
scoreboard objectives remove aestd.time.moon
scoreboard objectives remove aestd.time.dayp



## FUNCTION TAGS

# aestd:player_dies
scoreboard objectives remove aestd.deaths

# aestd:click_coas
scoreboard objectives remove aestd.click_coas



## OTHER

# villager trades generator
scoreboard objectives remove aestd.vt.level
scoreboard objectives remove aestd.vt.prv_lvl
scoreboard objectives remove aestd.vt.total_t

# raycast (internal use only)
scoreboard objectives remove aestd.rcdistance

# performance tests
scoreboard objectives remove aestd.wbdiameter
scoreboard objectives remove aestd.iterations
