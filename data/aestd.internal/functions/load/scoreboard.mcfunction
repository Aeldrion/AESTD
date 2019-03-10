# Written by Aeldrion, Minecraft 19w05a
# Creates the scoreboard objectives that AESTD uses


## GENERIC OBJECTIVES

scoreboard objectives add aestd.var dummy
scoreboard objectives add aestd.recursion dummy


## ENTITY FUNCTIONS

# get_block_id/set_block_id/set_head_to_block/set_falling_block_to_id
scoreboard objectives add aestd.block_id dummy

# block_to_chunk
scoreboard objectives add aestd.chunk.x dummy
scoreboard objectives add aestd.chunk.z dummy

# get_position/set_position
scoreboard objectives add aestd.coords.x dummy
scoreboard objectives add aestd.coords.y dummy
scoreboard objectives add aestd.coords.z dummy

# damage
scoreboard objectives add aestd.damage dummy
scoreboard objectives add aestd.damage.hp dummy

# offset_position
scoreboard objectives add aestd.delta.x dummy
scoreboard objectives add aestd.delta.y dummy
scoreboard objectives add aestd.delta.z dummy

# get_direction/set_direction
scoreboard objectives add aestd.dir.x dummy
scoreboard objectives add aestd.dir.y dummy
scoreboard objectives add aestd.dir.z dummy

# get_local_height
scoreboard objectives add aestd.height dummy

# get_motion/set_motion
scoreboard objectives add aestd.motion.x dummy
scoreboard objectives add aestd.motion.y dummy
scoreboard objectives add aestd.motion.z dummy

# get_rotation/set_rotation
scoreboard objectives add aestd.rot.x dummy
scoreboard objectives add aestd.rot.y dummy


## CONTEXT FUNCTIONS

# get_biome
scoreboard objectives add aestd.biome dummy


## MATH FUNCTIONS

# generic
scoreboard objectives add aestd.math.in dummy
scoreboard objectives add aestd.math.in2 dummy
scoreboard objectives add aestd.math.out dummy
scoreboard objectives add aestd.math.var dummy
scoreboard objectives add aestd.math.var2 dummy
scoreboard objectives add aestd.math.var3 dummy

# random/random_range
scoreboard objectives add aestd.random dummy
scoreboard objectives add aestd.random.min dummy
scoreboard objectives add aestd.random.max dummy


## ITEM FUNCTIONS

# load/save
scoreboard objectives add aestd.item_slot dummy

# set_count
scoreboard objectives add aestd.item_count dummy

# set_damage/add_damage
scoreboard objectives add aestd.item_dmg dummy
scoreboard objectives add aestd.item_drblt dummy


## PLAYER FUNCTIONS

# set_experience/add_experience
scoreboard objectives add aestd.xp dummy


## WORLD FUNCTIONS

# get_weather
scoreboard objectives add aestd.weather dummy

# get_time
scoreboard objectives add aestd.time dummy
scoreboard objectives add aestd.time.moon dummy
scoreboard objectives add aestd.time.dayp dummy


## FUNCTION TAGS

# aestd:player_dies
scoreboard objectives add aestd.deaths deathCount


## OTHER

# villager trades generator
scoreboard objectives add aestd.vt.level dummy
scoreboard objectives add aestd.vt.prv_lvl dummy

# raycast (internal use only)
scoreboard objectives add aestd.rcdistance dummy

# performance tests
scoreboard objectives add aestd.wbdiameter dummy
scoreboard objectives add aestd.iterations dummy
