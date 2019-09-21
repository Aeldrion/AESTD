# Written by Aeldrion, Minecraft 1.14
# Sets up the scoreboard for AESTD


## GENERIC OBJECTIVES

scoreboard objectives add aestd.var dummy
scoreboard objectives add aestd.recursion dummy
scoreboard objectives add aestd.list_mode dummy



## BLOCK FUNCTIONS

# get_block_id/set_block_id
scoreboard objectives add aestd.block.id dummy



## ENTITY FUNCTIONS

# get_position/set_position
scoreboard objectives add aestd.pos.x dummy
scoreboard objectives add aestd.pos.y dummy
scoreboard objectives add aestd.pos.z dummy

# damage
scoreboard objectives add aestd.damage dummy
scoreboard objectives add aestd.damage.hp dummy

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

# get_dimension
scoreboard objectives add aestd.dimension dummy

# get_light_level
scoreboard objectives add aestd.light dummy

# get_structure
scoreboard objectives add aestd.structure dummy



## MATH FUNCTIONS

# generic
scoreboard objectives add aestd.math.in dummy
scoreboard objectives add aestd.math.in2 dummy
scoreboard objectives add aestd.math.out dummy
scoreboard objectives add aestd.math.seed dummy
scoreboard objectives add aestd.math.var dummy
scoreboard objectives add aestd.math.var2 dummy
scoreboard objectives add aestd.math.var3 dummy

# random/random_range/random_lcg
scoreboard objectives add aestd.random dummy
scoreboard objectives add aestd.random.min dummy
scoreboard objectives add aestd.random.max dummy

# vector
scoreboard objectives add aestd.vector.x dummy
scoreboard objectives add aestd.vector.y dummy
scoreboard objectives add aestd.vector.z dummy



## ITEM FUNCTIONS

scoreboard objectives add aestd.item.cmd dummy
scoreboard objectives add aestd.item.count dummy
scoreboard objectives add aestd.item.dmg dummy
scoreboard objectives add aestd.item.drblt dummy
scoreboard objectives add aestd.item.ench dummy
scoreboard objectives add aestd.item.lvl dummy

scoreboard objectives add aestd.item.slot dummy



## PLAYER FUNCTIONS

# set_experience/add_experience
scoreboard objectives add aestd.player.xp dummy

# get_block_looking_at
scoreboard objectives add aestd.player.rcd dummy



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

# aestd:click_coas
scoreboard objectives add aestd.click_coas minecraft.used:minecraft.carrot_on_a_stick



## OTHER

# villager trades generator
# this is actually just for my own data packs right now, since the trade generator hasn't been published yet
scoreboard objectives add aestd.vt.level dummy
scoreboard objectives add aestd.vt.prv_lvl dummy
scoreboard objectives add aestd.vt.total_t dummy

# raycast (internal use only)
scoreboard objectives add aestd.rcdistance dummy

# benchmarking
scoreboard objectives add aestd.wbdiameter dummy
scoreboard objectives add aestd.iterations dummy

execute unless score #aestd.loaded aestd.var matches 1 run scoreboard players set #aestd.chunk_setup aestd.var 0
scoreboard players set #aestd.loaded aestd.var 1
